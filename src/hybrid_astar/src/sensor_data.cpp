#include<ros/ros.h>
#include"hybrid_astar/obs.h"
#include<iostream>
#include<string>
#include"std_msgs/Float32.h"
#include"geometry_msgs/Point.h"
#include <cmath>
#include "sensor_msgs/LaserScan.h"
#include<vector>
using namespace std;

vector<float> front;
vector<float> rear;
float len1;
float len2;

void current_obs_front(const sensor_msgs::LaserScan::ConstPtr& msg)
{

len1 = (int)msg->ranges.size();
for(int i=0;i<len1;i++)
front.push_back(msg->ranges[i]);

cout<<"front "<<front[len1-1]<<endl;
}

void current_obs_rear(const sensor_msgs::LaserScan::ConstPtr& msg)
{

len2 = (int)msg->ranges.size();
for(int i=0;i<len2;i++)
rear.push_back(msg->ranges[i]);

cout<<"rear "<<rear[len2-1]<<endl;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "sensor_data");
  ros::NodeHandle nh;

  ros::Subscriber sub1 = nh.subscribe("front/scan", 5, current_obs_front);
  ros::Subscriber sub2 = nh.subscribe("rear/scan", 5, current_obs_rear);

  ROS_INFO("Ready to check obstacles");
  ros::spin();

  return 0;
}
