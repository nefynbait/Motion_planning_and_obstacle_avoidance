 /** Automatic Addison
 * Website: https://automaticaddison.com
 *   ROS node that converts the user's desired initial pose and goal location
 *   into a usable format.
 * Subscribe:
 *   initialpose : The initial position and orientation of the robot using 
 *                 quaternions. (geometry_msgs/PoseWithCovarianceStamped)
 *   move_base_simple/goal : Goal position and 
 *                           orientation (geometry_msgs::PoseStamped)
 * Publish: This node publishes to the following topics:   
 *   goal_2d : Goal position and orientation (geometry_msgs::PoseStamped)
 *   initial_2d : The initial position and orientation of the robot using 
 *                Euler angles. (geometry_msgs/PoseStamped)
 * From Practical Robotics in C++ book (ISBN-10 : 9389423465)
 *   by Lloyd Brombach
 */
 
// Include statements 
#include "ros/ros.h"
#include "geometry_msgs/PoseStamped.h"
#include "geometry_msgs/PoseWithCovarianceStamped.h"
#include <tf/transform_broadcaster.h>
#include <iostream>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>

/*<!-- <param name="delta_x" value="-24.9532"/>
		<param name="delta_y" value="-25.0" />  -->*/
 
using namespace std;

int main(int argc, char **argv) {
  ros::init(argc, argv, "rviz_click_to_2d");
  ros::NodeHandle node;
	ros::Publisher pub;
ros::Publisher pub2;
  pub = node.advertise<geometry_msgs::PoseWithCovarianceStamped>("tb3_0/initialpose", 1000);
  pub2 = node.advertise<geometry_msgs::PoseStamped>("tb3_0/move_base_simple/goal", 1000);

  geometry_msgs::PoseWithCovarianceStamped rpyPose;
  rpyPose.header.frame_id = "/map";
  //rpyPose.header.stamp = pose.header.stamp;
ros::Duration(1).sleep();
  rpyPose.pose.pose.position.x = 7.50;
  rpyPose.pose.pose.position.y = 25;
  rpyPose.pose.pose.position.z = 0;
  //tf::Quaternion q(0, 0, pose.pose.pose.orientation.z, pose.pose.pose.orientation.w);
  //tf::Matrix3x3 m(q);
  double roll, pitch, yaw;
roll=0;
pitch=0;
yaw=0;
/*tf::Quaternion q=tf::createQuaternionFromRPY(roll,pitch,yaw);
geometry_msgs::Quaternion quat_msg;
tf::quaternionTFToMsg(q,quat_msg);
rpyPose.pose.pose.orientation=quat_msg;
  //m.getRPY(roll, pitch, yaw);*/
  rpyPose.pose.pose.orientation.x = 0;
  rpyPose.pose.pose.orientation.y = 0;
  rpyPose.pose.pose.orientation.z = 0;
  rpyPose.pose.pose.orientation.w = 1;
//cout<<rpyPose.pose.pose.orientation.z<<endl;
  pub.publish(rpyPose);

cout<<"k"<<endl;

  geometry_msgs::PoseStamped rpyGoal;
  rpyGoal.header.frame_id = "/map";
  //rpyGoal.header.stamp = goal.header.stamp;
  rpyGoal.pose.position.x = 8;
  rpyGoal.pose.position.y = 28;
  rpyGoal.pose.position.z = 0;
  //tf::Quaternion q(0, 0, goal.pose.orientation.z, goal.pose.orientation.w);
  //tf::Matrix3x3 m(q);
  //double roll, pitch, yaw;
roll=0;
pitch=0;
yaw=1.57;
tf::Quaternion q;
q=tf::createQuaternionFromRPY(roll,pitch,yaw);
geometry_msgs::Quaternion quat_msg;
tf::quaternionTFToMsg(q,quat_msg);
rpyGoal.pose.orientation=quat_msg;

  //m.getRPY(roll, pitch, yaw);
  /*rpyGoal.pose.orientation.x = 0;
  rpyGoal.pose.orientation.y = 0;
  rpyGoal.pose.orientation.z = 0;
  rpyGoal.pose.orientation.w = 1;*/
  pub2.publish(rpyGoal);
cout<<"L"<<endl;


  //ros::Subscriber sub = node.subscribe("move_base_simple/goal", 0, handle_goal);
  //ros::Subscriber sub2 = node.subscribe("initialpose", 0, handle_initial_pose);
  ros::Rate loop_rate(10);
  while (ros::ok()) {
        ros::spinOnce();
        loop_rate.sleep();
  }
  return 0;
}
