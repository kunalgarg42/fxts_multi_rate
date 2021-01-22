#include "relay.h"

#define MSG_MODE 'M'
#define MSG_CTRL 'K'
#define MSG_POSE 'P'

Relay::Relay() {
  srv_logging_ = nh_.advertiseService("logging", &Relay::cb_srv_logging_, this);
  sub_cmd_ = nh_.subscribe<ambercortex_ros::cmd>("cmd", 10, &Relay::cb_cmd_, this);
  sub_pose_ = nh_.subscribe<ambercortex_ros::cmd>("pose_data", 10, &Relay::cb_pose_, this);
  pub_sensor_ = nh_.advertise<ambercortex_ros::sensor>("sensor", 100);
  pub_state_ = nh_.advertise<ambercortex_ros::state>("state", 100);
  pub_input_ = nh_.advertise<ambercortex_ros::input>("input", 100);
  pub_ctrl_info_ = nh_.advertise<ambercortex_ros::ctrl_info>("ctrl_info", 100);

  maxsize_buffer = 100;
  ros::param::get("~_maxsize_buffer", maxsize_buffer);

  pose_len = 100;
  ros::param::get("~_pose_len", pose_len);

  cmd_len = 100;
  ros::param::get("~_cmd_len", cmd_len);

  bool autolog = false;
  ros::param::get("~_autolog", autolog);

  if (autolog)
    if (!newlog("initial"))
      ROS_ERROR("failed to create initial log, logging disabled");

  ROS_INFO("ros thread running");
}

void Relay::cb_cmd_(const ambercortex_ros::cmd::ConstPtr & msg) {
  // copy cmd to local buffer
  mtx_cmd.lock();
  std::vector<uint8_t> new_data = msg->data;    // add data
  new_data.push_back(msg->chksum);  // add chksum
  cmd_buffer.push(new_data);

  if (cmd_buffer.size() > maxsize_buffer) {
    ROS_WARN_THROTTLE(0.5, "buffer capacity %d exceeded, message lost", maxsize_buffer);
    cmd_buffer.pop();
  }

  mtx_cmd.unlock();
}

void Relay::cb_pose_(const ambercortex_ros::cmd::ConstPtr & msg) {
  // copy cmd to local buffer
  mtx_cmd.lock();
  std::vector<uint8_t> new_data = msg->data;    // add data
  new_data.push_back(msg->chksum);  // add chksum
  pose_buffer.push(new_data);

  if (pose_buffer.size() > maxsize_buffer) {
    ROS_WARN_THROTTLE(0.5, "buffer capacity %d exceeded, message lost", maxsize_buffer);
    pose_buffer.pop();
  }

  mtx_cmd.unlock();
}

bool Relay::newlog(const std::string & name) {

  // generate log filename
  std::time_t now = std::time(0);
  std::tm * ltm = std::localtime(&now);
  std::ostringstream os;
  os << "log_" << name << "_"
     << std::setfill('0')
     << std::setw(4) << 1900+ltm->tm_year
     << std::setw(2) << ltm->tm_mon
     << std::setw(2) << ltm->tm_mday << '_'
     << std::setw(2) << ltm->tm_hour
     << std::setw(2) << ltm->tm_min
     << std::setw(2) << ltm->tm_sec;

  // check file with filename exists
  std::ifstream test_stream(os.str());
  if (test_stream.good())
    return false;
  test_stream.close();

  logfile_handle_.open(os.str(), std::ios::binary);

  if (logfile_handle_.is_open())
    ROS_INFO("now logging in %s", os.str().c_str());
  else
    ROS_ERROR("could not open new logfile %s", os.str().c_str());

  mtx_log.unlock();

  return true;
}

bool Relay::cb_srv_logging_(ambercortex_ros::logging::Request & req, ambercortex_ros::logging::Response & res) {
  // close old log file if open
  mtx_log.lock();
  if (logfile_handle_.is_open())
    logfile_handle_.close();
  mtx_log.unlock();

  if (req.start)
    res.result = newlog(req.logname);
  else
    res.result = true;

  return true;
}

void Relay::shmem_loop() {
  // data from shared memory is of form
  //
  //  LEN        4
  //  STATUS     1
  //  TIME       4
  //  SENSOR     4 * LEN_SENSOR
  //  STATE      4 * LEN_STATE
  //  CTRL_INFO  LEN - 6 - 4 * (LEN_STATE + LEN_SENSOR)
  //  CHKSUM     1

  int msg, fd_read, buf, rv;
  char * memptr;
  char * shmemptr;
  unsigned int * map_array;

  num32_t n32;

  std::string shmem_dev = "/dev/uio0";
  int shmem_size = 1000;
  int len_state = 9;
  int len_input = 2;
  int len_sensor = 9;

  ros::param::get("~_shmem_dev", shmem_dev);
  ros::param::get("~_shmem_size", shmem_size);
  ros::param::get("~_len_state", len_state);
  ros::param::get("~_len_input", len_input);
  ros::param::get("~_len_sensor", len_sensor);

  // wait until device exists
  std::ifstream ifile(shmem_dev);
  while (!(bool)ifile) {
    ROS_WARN_THROTTLE(2, "shmem device %s does not exist, retrying...", shmem_dev.c_str());
    ifile.open(shmem_dev);
  }
  ifile.close();

  // open actual stream
  ROS_INFO("shmem thread starting with device %s and shmem_size %d", shmem_dev.c_str(), shmem_size);
  fd_read = open(shmem_dev.c_str(), O_RDWR);

  while (1==1) {

    rv = read(fd_read, &buf, sizeof(buf));

    // map interrupt region
    if ((memptr = (char *) mmap(NULL, 256, PROT_READ|PROT_WRITE, MAP_SHARED, fd_read, 0)) == (char *) -1) {
      ROS_ERROR("interrupt mmap failed (0x%p)\n", memptr);
      close (fd_read);
      exit (-1);
    }

    // send first interrupt "starting to read"
    map_array = (unsigned int *)memptr;
    msg = ((0xffff) << 16) + (0xffff);
    map_array[Doorbell/sizeof(int)] = msg;

    // map shared memory
    if ((shmemptr = (char *) mmap(NULL, shmem_size, PROT_READ|PROT_WRITE, MAP_SHARED, fd_read, 4096)) == (char *) -1){
      ROS_ERROR("shmem mmap failed (0x%p)\n", memptr);
      close (fd_read);
      exit (-1);
    }

    // extract message length
    n32.c[0] = shmemptr[0];
    n32.c[1] = shmemptr[1];
    n32.c[2] = shmemptr[2];
    n32.c[3] = shmemptr[3];
    uint32_t len = n32.ui;

    if (4 + len <= shmem_size) {

      // log to file
      if (logfile_handle_.is_open()) {
        mtx_log.lock();
        logfile_handle_.put('S');
        logfile_handle_.put('T');
        logfile_handle_.put('A');
        for (int i=0; i!=len; ++i)
          logfile_handle_.put(shmemptr[4+i]);
        logfile_handle_.put('E');
        logfile_handle_.put('N');
        logfile_handle_.put('D');
        logfile_handle_.flush();
        mtx_log.unlock();
      }

      // compute chksum
      uint8_t chksum = 0;
      for (int i=0; i!=len-1; ++i)
        chksum += shmemptr[4+i];

      int len_ctrl_info = (len - 6 - 4*(len_state+len_sensor) - 4*len_input)/4;

      if (chksum == shmemptr[4+len-1] && 9 + 4*(len_state + len_sensor + len_input + len_ctrl_info) < shmem_size) {

        // extract data and publish to ros
        ambercortex_ros::state state_msg;
        ambercortex_ros::input input_msg;
        ambercortex_ros::sensor sensor_msg;
        ambercortex_ros::ctrl_info ctrl_info_msg;

        // status
        state_msg.status = shmemptr[4];

        // time
        n32.c[0] = shmemptr[5];
        n32.c[1] = shmemptr[6];
        n32.c[2] = shmemptr[7];
        n32.c[3] = shmemptr[8];
        state_msg.time = n32.ui;
        sensor_msg.time = n32.ui;
        ctrl_info_msg.time = n32.ui;
        input_msg.time = n32.ui;

        // sensor
        for (int i = 0; i != len_sensor; ++i) {
          n32.c[0] = shmemptr[9 + 4*i];
          n32.c[1] = shmemptr[9 + 4*i + 1];
          n32.c[2] = shmemptr[9 + 4*i + 2];
          n32.c[3] = shmemptr[9 + 4*i + 3];
          sensor_msg.sensor.push_back(n32.f);
        }

        // states
        for (int i = 0; i != len_state; ++i) {
          n32.c[0] = shmemptr[9 + 4*len_sensor + 4*i];
          n32.c[1] = shmemptr[9 + 4*len_sensor + 4*i + 1];
          n32.c[2] = shmemptr[9 + 4*len_sensor + 4*i + 2];
          n32.c[3] = shmemptr[9 + 4*len_sensor + 4*i + 3];
          state_msg.state.push_back(n32.f);
        }

        // input
        for (int i = 0; i != len_input; ++i) {
          n32.c[0] = shmemptr[9 + 4*len_sensor + 4*len_state + 4*i];
          n32.c[1] = shmemptr[9 + 4*len_sensor + 4*len_state + 4*i + 1];
          n32.c[2] = shmemptr[9 + 4*len_sensor + 4*len_state + 4*i + 2];
          n32.c[3] = shmemptr[9 + 4*len_sensor + 4*len_state + 4*i + 3];
          input_msg.input.push_back(n32.f);
        }

        // ctrl info
        for (int i = 0; i < len_ctrl_info; i++) {
          n32.c[0] = shmemptr[9 + 4*len_sensor + 4*len_state + 4*len_input + 4*i];
          n32.c[1] = shmemptr[9 + 4*len_sensor + 4*len_state + 4*len_input + 4*i + 1];
          n32.c[2] = shmemptr[9 + 4*len_sensor + 4*len_state + 4*len_input + 4*i + 2];
          n32.c[3] = shmemptr[9 + 4*len_sensor + 4*len_state + 4*len_input + 4*i + 3];
          ctrl_info_msg.data.push_back(n32.f);
        }

        // ros publish
        pub_state_.publish(state_msg);
        pub_sensor_.publish(sensor_msg);
        pub_input_.publish(input_msg);
        if (ctrl_info_msg.data.size())
          pub_ctrl_info_.publish(ctrl_info_msg);

      } else if (chksum != shmemptr[4+len-1])
        ROS_WARN("checksum failed, not publishing to ROS");
      else {
        ROS_WARN("length problem: len=%d len_sensor=%d len_state=%d len_input=%d len_ctrl_info=%d shmem_size=%d",
                 len, len_sensor, len_state, len_input, len_ctrl_info, shmem_size);
      }
    } else {
      ROS_WARN("shmem_size<len=%d=[%d %d %d %d], ignoring",
	       len, shmemptr[0], shmemptr[1], shmemptr[2], shmemptr[3]);
    }

    // write local command buffer to shmem
    // format:
    //   DONE   4
    //   len    4
    //   cmd    len - 1
    //   chksum 1

    shmemptr[0] = 'D';
    shmemptr[1] = 'O';
    shmemptr[2] = 'N';
    shmemptr[3] = 'E';

    n32.ui = 0;

    mtx_cmd.lock();
    if (pose_buffer.empty() && cmd_buffer.empty()) {
      shmemptr[4] = n32.c[0];
      shmemptr[5] = n32.c[1];
      shmemptr[6] = n32.c[2];
      shmemptr[7] = n32.c[3];
    }
    else {
      n32.ui = cmd_len+pose_len;
      shmemptr[4] = n32.c[0];
      shmemptr[5] = n32.c[1];
      shmemptr[6] = n32.c[2];
      shmemptr[7] = n32.c[3];

      if (!cmd_buffer.empty()) {
        // write message if it fits
        if (8 + n32.ui <= shmem_size && cmd_len == cmd_buffer.front().size()) {
          for (int i = 0; i < cmd_len-1; i++) {
            shmemptr[8+i] = cmd_buffer.front()[i];
          }
        } else if (cmd_len != cmd_buffer.front().size()){
          ROS_WARN("cmd_len is the wrong size");
        }
        else {
          ROS_WARN("command received is too long for shared memory");
        }
        cmd_buffer.pop();
      } else {
        for (int i = 0; i < cmd_len; i++) {
          shmemptr[8+i] = 0;
        }
      }
      if (!pose_buffer.empty()) {
        // write message if it fits
        if (8 + n32.ui <= shmem_size && pose_len == pose_buffer.front().size()) {
          shmemptr[8] += MSG_POSE;
          for (int i = cmd_len-1; i < n32.ui; i++) {
            shmemptr[8+i] = pose_buffer.front()[i-(cmd_len-1)];
          }
        } else if (pose_len != pose_buffer.front().size()){
          ROS_WARN("pose_len is the wrong size");
        }
        else {
          ROS_WARN("command received is too long for shared memory");
        }
        pose_buffer.pop();
      } else {
        for (int i = cmd_len-1; i < n32.ui-1; i++) {
          shmemptr[8+i] = 0;
        }
      }
      shmemptr[8+n32.ui-1] = 0;
      for (int i = 0; i < n32.ui-1; i++) {
        shmemptr[8+n32.ui-1] += shmemptr[8+i];
      }
    }
    mtx_cmd.unlock();

    // send second interrupt "im done"
    map_array = (unsigned int *)memptr;
    msg = ((0xffff) << 16) + (0xffff);
    map_array[Doorbell/sizeof(int)] = msg;

    munmap(memptr, 256);
    munmap(shmemptr, shmem_size);
  }
}
