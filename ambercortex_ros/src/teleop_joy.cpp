#include <ros/ros.h>
#include "ambercortex_ros/cmd.h"
#include <sensor_msgs/Joy.h>

#include "common.h"

// msg prefixes
#define MSG_MODE 'M'
#define MSG_CTRL 'K'

// mode request commands
#define MODE_INIT 10
#define MODE_RUN 20
#define MODE_BACKUP 30

class TeleopJoy {
public:
  TeleopJoy();

private:
  void joyCallback(const sensor_msgs::Joy::ConstPtr& joy);
  ros::NodeHandle nh_;
  ros::Time last_button;

  int btn_init, btn_run, btn_backup, btn_l1, btn_r1;

  int axis_left_ud, axis_left_lr, axis_right_ud, axis_right_lr;
  int axis_left_ud_inv, axis_left_lr_inv, axis_right_ud_inv, axis_right_lr_inv;
  int axis_aux_ud, axis_aux_lr;
  int axis_l2, axis_r2;

  ros::Publisher cmd_pub_;
  ros::Subscriber joy_sub_;
};

TeleopJoy::TeleopJoy(): last_button(ros::Time::now()) {

  ros::param::get("~_btn_init", btn_init);
  ros::param::get("~_btn_run", btn_run);
  ros::param::get("~_btn_backup", btn_backup);

  ros::param::get("~_axis_left_ud", axis_left_ud);
  ros::param::get("~_axis_left_lr", axis_left_lr);

  ros::param::get("~_axis_left_ud_inv", axis_left_ud_inv);
  ros::param::get("~_axis_left_lr_inv", axis_left_lr_inv);

  ros::param::get("~_axis_right_ud", axis_right_ud);
  ros::param::get("~_axis_right_lr", axis_right_lr);

  ros::param::get("~_axis_right_ud_inv", axis_right_ud_inv);
  ros::param::get("~_axis_right_lr_inv", axis_right_lr_inv);

  ros::param::get("~_axis_aux_ud", axis_aux_ud);
  ros::param::get("~_axis_aux_lr", axis_aux_lr);

  ros::param::get("~_axis_L2", axis_l2);
  ros::param::get("~_axis_R2", axis_r2);

  ros::param::get("~_btn_L1", btn_l1);
  ros::param::get("~_btn_R1", btn_r1);

  cmd_pub_ = nh_.advertise<ambercortex_ros::cmd>("cmd", 1);
  joy_sub_ = nh_.subscribe<sensor_msgs::Joy>("joy", 10, &TeleopJoy::joyCallback, this);
}

void add_float_to_vec(std::vector<uint8_t> & vec, float f) {
  // add four bits to the end of a std::vector<uint8_t> representing a float
  num32_t n32;
  n32.f = f;
  vec.push_back(n32.c[0]);
  vec.push_back(n32.c[1]);
  vec.push_back(n32.c[2]);
  vec.push_back(n32.c[3]);
}

uint8_t compute_vec_chksum(const std::vector<uint8_t> & vec) {
  // compute checksum of a std::vector<uint8_t>
  uint8_t chksum = 0;
  for (auto it = vec.cbegin(); it != vec.cend(); ++it)
    chksum += *it;
  return chksum;
}

void TeleopJoy::joyCallback(const sensor_msgs::Joy::ConstPtr& joy)
{

  // publish control message
  ambercortex_ros::cmd msg_axis;

  // M for mode
  msg_axis.data.push_back(MSG_CTRL);

  add_float_to_vec(msg_axis.data, axis_left_ud_inv*joy->axes[axis_left_ud]);
  add_float_to_vec(msg_axis.data, axis_left_lr_inv*joy->axes[axis_left_lr]);
  add_float_to_vec(msg_axis.data, axis_right_ud_inv*joy->axes[axis_right_ud]);
  add_float_to_vec(msg_axis.data, axis_right_lr_inv*joy->axes[axis_right_lr]);

  add_float_to_vec(msg_axis.data, joy->axes[axis_aux_ud]);
  add_float_to_vec(msg_axis.data, joy->axes[axis_aux_lr]);

  add_float_to_vec(msg_axis.data, joy->axes[axis_l2]);
  add_float_to_vec(msg_axis.data, joy->axes[axis_r2]);

  add_float_to_vec(msg_axis.data, joy->buttons[btn_l1]);
  add_float_to_vec(msg_axis.data, joy->buttons[btn_r1]);

  msg_axis.chksum = compute_vec_chksum(msg_axis.data);

  // publish mode message if button pressed
  cmd_pub_.publish(msg_axis);

  // publish mode message
  ambercortex_ros::cmd msg_button;
  msg_button.data.push_back(MSG_MODE);

  if (joy->buttons[btn_init]) {
    // request INIT
    msg_button.data.push_back(MODE_INIT);
    for (int i = 0; i < 39; i++) {
      msg_button.data.push_back(0);
    }
    msg_button.chksum = compute_vec_chksum(msg_button.data);
    last_button = ros::Time::now();
    cmd_pub_.publish(msg_button);
  } else if (joy->buttons[btn_run]) {
    // request RUN
    msg_button.data.push_back(MODE_RUN);
    for (int i = 0; i < 39; i++) {
      msg_button.data.push_back(0);
    }
    msg_button.chksum = compute_vec_chksum(msg_button.data);
    last_button = ros::Time::now();
    cmd_pub_.publish(msg_button);
  } else if (joy->buttons[btn_backup]) {
    // request BACKUP
    msg_button.data.push_back(MODE_BACKUP);
    for (int i = 0; i < 39; i++) {
      msg_button.data.push_back(0);
    }
    msg_button.chksum = compute_vec_chksum(msg_button.data);
    last_button = ros::Time::now();
    cmd_pub_.publish(msg_button);
  }
}


int main(int argc, char** argv)
{
  ros::init(argc, argv, "cyberjoy");
  TeleopJoy teleop_joy;

  ros::spin();
}
