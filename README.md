# motion_planning_and_obstacle_avoidance
Summary of the Project - https://docs.google.com/presentation/d/1e-NAQR7hFBtkMtWECv8oQSTDxtXthNkv1dOKknvWkQs/edit?usp=sharing
## Code is available in master branch
**Dependencies**
- ROS MELODIC
- UNBUNTU 18.04
- OPEN MOTION PLANNING LIBRARY(OMPL)
```
sudo apt install libompl-dev
```
- jsk_recognition_msg
```
sudo apt-get install ros-melodic-jsk-recognition-msgs
```
**Reference**
- tuw_multi_robot 
(https://github.com/tuw-robotics/tuw_multi_robot)

- turtlebot3
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

**Important**
The code by default only stops with response to the obstacle. To activate the code for moving left or right remove the comment in line no.158 and 175 from file src/hybrid_astar/src/obs_service

![image](https://user-images.githubusercontent.com/63865577/151713842-21cf9263-746d-4e89-a06a-8c678661955f.png)




https://user-images.githubusercontent.com/63865577/151714319-16acddc6-ebbf-43a1-922b-8ee04e7cb63c.mp4


https://user-images.githubusercontent.com/63865577/151714335-34c15175-b275-4dab-99c6-c373c55767fc.mp4


