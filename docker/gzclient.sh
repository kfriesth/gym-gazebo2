#!bin/sh

export GAZEBO_MODEL_PATH=$GAZEBO_MODEL_PATH:/tmp/ros2_mara_ws/install/share
export GAZEBO_PLUGIN_PATH=$GAZEBO_PLUGIN_PATH:/tmp/ros2_mara_ws/install/lib
export GAZEBO_MASTER_IP=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' gg2)
export GAZEBO_MASTER_URI=$GAZEBO_MASTER_IP:11345
gzclient
