#include "ros/ros.h"

#include <thread>
#include <string>

#include "relay.h"

int main(int argc, char **argv) { 

  ros::init(argc, argv, "cyber_linux");
  Relay relay;

  // shmem thread
  std::thread th(&Relay::shmem_loop, &relay);
  th.detach();

  // ros thread
  ros::spin();

  return 0;
}