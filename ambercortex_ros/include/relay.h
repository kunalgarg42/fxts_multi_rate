#include <sys/mman.h>
#include <fcntl.h>

#include <queue>
#include <fstream>
#include <ctime>
#include <thread>
#include <mutex>
#include <string>

#include "ros/ros.h"
#include "ambercortex_ros/cmd.h"
#include "ambercortex_ros/sensor.h"
#include "ambercortex_ros/state.h"
#include "ambercortex_ros/input.h"
#include "ambercortex_ros/ctrl_info.h"
#include "ambercortex_ros/logging.h"

#include "common.h"

#ifndef INCLUDE_RELAY_H
#define INCLUDE_RELAY_H

class Relay {
public:
  Relay();
  void shmem_loop();

private:
  void cb_cmd_(const ambercortex_ros::cmd::ConstPtr &);
  void cb_pose_(const ambercortex_ros::cmd::ConstPtr &);
  bool cb_srv_logging_(ambercortex_ros::logging::Request &, ambercortex_ros::logging::Response &);

  bool newlog(const std::string &);

  ros::NodeHandle nh_;
  ros::ServiceServer srv_logging_;
  ros::Subscriber sub_cmd_;
  ros::Subscriber sub_pose_;
  ros::Publisher pub_sensor_;
  ros::Publisher pub_state_;
  ros::Publisher pub_input_;
  ros::Publisher pub_ctrl_info_;

  std::mutex mtx_cmd, mtx_log;

  std::ofstream logfile_handle_;
  int maxsize_buffer;
  int cmd_len;
  int pose_len;
  std::queue<std::vector<uint8_t>> cmd_buffer;
  std::queue<std::vector<uint8_t>> pose_buffer;
};

enum ivshmem_registers {
  IntrMask = 0,
  IntrStatus = 4,
  IVPosition = 8,
  Doorbell = 12,
  IVLiveList = 16
};

#endif
