# ambercortex_ros

Linux-side relay between Erika and ROS via shared memory.

## How to use

Parameters and the namespace are configured in launch file in projects (e.g. https://bitbucket.org/bipedalrobotics/cyberpod_ros).

 - Start a new log: ```roscall /ns/logging "start: true, logname: 'name'"```. Log files are saved in ```~/.ros``` in binary format.

 - Stop a log: ```roscall /ns/logging "start: false"```.

 - Unpack a log: ```rosrun ambercortex_ros parse_log logfile format``` where ```format``` is e.g. ```bufffffffff``` for a byte (```b```) followed by a uint32 (```u```) and nine floats (```f```). If a wrong format is given nothing is printed. 

## Ros topics and services

The namespace (```ns``` below) is configured in launch files. This node:

 - Subscribes to ```/ns/cmd``` (message type ```msg/cmd.msg```) for sending commands to the RTOS
 - Publishes RTOS state information to ```/ns/state``` (message type ```msg/state.msg```)
 - Published RTOS input information to ```/ns/input``` (message type ```msg/input.msg```)
 - Publishes RTOS auxiliary information to ```/ns/ctrl_info``` (message type ```msg/ctrl_info.msg```)
 - Provides service ```/ns/logging``` (srv type ```srv/logging.srv```)