# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;message_generation;std_msgs;sensor_msgs;geometry_msgs;visualization_msgs;nav_msgs;tf;pcl_conversions;pcl_ros;ambercortex_ros".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lsegway_sim".split(';') if "-lsegway_sim" != "" else []
PROJECT_NAME = "segway_sim"
PROJECT_SPACE_DIR = "/usr/local"
PROJECT_VERSION = "0.1.0"
