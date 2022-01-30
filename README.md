# motion_planning_and_obstacle_avoidance
# motion_planning_and_obstacle_avoidance
**Dependencies**
-ROS MELODIC
-UNBUNTU 18.04
-OPEN MOTION PLANNING LIBRARY(OMPL)
```
sudo apt install libompl-dev
```
-jsk_recognition_msg
```
sudo apt-get install ros-melodic-jsk-recognition-msgs
```
**Reference**
-tuw_multi_robot 
(https://github.com/tuw-robotics/tuw_multi_robot)

-turtlebot3
(https://github.com/ROBOTIS-GIT/turtlebot3)

To run the code follow the following steps

**Open the terminal in root directory**
```
>catkin_make

>source devel/setup.bash

>roslaunch hybrid_astar hybrid_astar.launch
```
**Open another terminal window in the root directory to run hybrid_astar for another robot**
```
>source devel/setup.bash
>rosrun hybrid_astar hybrid_astar_tb3_1
```
Alternatively, the move_base for tb3_1 can also be launched. Code for launching move_base in given src/turtlebot3/turtlebot_navigation/launch/single_robot.launch

**Open another terminal window in the root directory to obs_server**
```
>source devel/setup.bash
>rosrun hybrid_astar obs_server
```
wait for tuw graph to generate and then right click on 2D Pose Estimate and click tool properties
change to publishing topic for initial position and /move_base_simple/goal accordingly for each robot. For example write tb3_0/initialpose and tb3_0/move_base_simple/goal for tb3_0 robot.


