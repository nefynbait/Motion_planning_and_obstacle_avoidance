#include<ros/ros.h>
#include"hybrid_astar/obs.h"
#include<iostream>
#include<string>
#include"std_msgs/Float32.h"
#include"geometry_msgs/Point.h"
#include <cmath>
#include "sensor_msgs/LaserScan.h"
#include<vector>

#include <tf/tf.h>
#include <tf/transform_listener.h>
#include <nav_msgs/Path.h>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/Quaternion.h>

#include<cmath>
using namespace std;


bool status=true;
float x=0;
float y=0;
float v=0;
float syaw=0;
tf::TransformListener* plistener=NULL;

float xr;
float yr;
float rr;

float v_obs_x;
float v_obs_y;

float v_rel_x;
float v_rel_y;

float r_x;
float r_y;

float v_theta;
float v_r;

float v_r1;
float v_theta1;

float v_r2;
float v_theta2;

float angle;
float radius;

bool status2;

float slope;
float inter1;
float inter;
float inter2;

float distance1;
float distance2;

float value1;
float value2;
float value3;
vector<float> front(720,0);
vector<float> rear(720,0);
float len1;
float len2;

string result;

	//tf::TransformListener listener_robot;
//	tf::StampedTransform transform_robot;

void current_obs_front(const sensor_msgs::LaserScan::ConstPtr& msg)
{

len1 = (int)msg->ranges.size();
for(int i=0;i<len1;i++)
front[i]=(msg->ranges[i]);
}

void current_obs_rear(const sensor_msgs::LaserScan::ConstPtr& msg)
{

len2 = (int)msg->ranges.size();
for(int i=0;i<len2;i++)
rear[i]=(msg->ranges[i]);
}
//ros::Time start=ros::Time::now();
//float ti=ros::Time::now().toSec();
void callback_change(const geometry_msgs::Twist message)

{
//cout<<message.x<<" "<<message.y;

//ti=ti-ros::Time::now().toSec();
v=message.linear.x;

//ti=ros::Time::now().toSec();


}
bool check = false;
bool callback(hybrid_astar::obsRequest& req, hybrid_astar::obsResponse& res)
{
	//ros::Duration(0.1).sleep();
	//ros::spinOnce();	
	xr=req.x_r;
	yr=req.y_r;
	rr=req.r_r;
	check=req.check;
	cout<<xr<<" "<<yr<<endl;
tf::StampedTransform transform_robot;
plistener->lookupTransform("/map", "/tb3_1/base_footprint", ros::Time(0), transform_robot);
        syaw = tf::getYaw(transform_robot.getRotation());
	x=(transform_robot.getOrigin().x());
	y=(transform_robot.getOrigin().y());
	cout<<x<<" "<<y<<endl;
	v_obs_x=v*cos(syaw);
	v_obs_y=v*sin(syaw);
	float distance = sqrt((x-xr)*(x-xr) + (y-yr)*(y-yr));
	
	cout<<"distance: "<< distance<<endl;
	cout<<"velocity: "<<v<<endl;

	v_rel_x=v_obs_x-0.25*cos(rr);
	v_rel_y=v_obs_y-0.25*sin(rr);
	
	r_x=x-xr;
	r_y=y-yr;

	v_r=(v_rel_x*r_x + v_rel_y*r_y)/distance;
	v_theta = sqrt(v_rel_x*v_rel_x + v_rel_y*v_rel_y - v_r*v_r) ;
	//cout<<"vel:" <<v_r<<" "<<v_theta<<endl;
	//cout<<"test: "<<rear[len1-1]<<" "<<front[len2-1]<<endl;
	radius=1.5;
	angle= radius/sqrt(distance*distance/4 - radius*radius);
	value1=(v_theta*v_theta)-(angle*v_r)*(angle*v_r);
	cout<<value1<<endl;
	v_r1 = (v_obs_x*r_x + v_obs_y*r_y)/distance;
	v_theta1 = sqrt(v_obs_x*v_obs_x + v_obs_y*v_obs_y - v_r1*v_r1);
	value2=(v_theta1*v_theta1)-(angle*v_r1)*(angle*v_r1);
	//cout<<rr<<endl;
	cout<<"vel:" <<value2<<endl;
        if(check)
	{status=true;
	return true;}

	if ((value1<0) && (v_r<0) && distance<9)
	{status = false;
		cout<<"stop"<<endl;
	result="stop";

	if((value2<0) && (v_r1<0))
	{status=false;
	/*slope=(v_obs_y/v_obs_x);
	inter=y-slope*x;
	inter1=inter+2/cos(atan2(v_obs_y,v_obs_x));
	inter2=inter-2/cos(atan2(v_obs_y,v_obs_x));
	cout<<"slope"<<slope<<endl;
	distance1 = abs(yr-xr*slope-inter1);
	distance2 = abs(yr-xr*slope-inter2);
	cout<<"inter"<<inter1<<" "<<inter2<<endl;
	cout<<"dist"<<distance1<<" "<<distance2<<endl;
	if(distance1>distance2)
	{cout<<"move_left"<<endl;
	result="move_left";}
	
	else
	{cout<<"move_right"<<endl;
	result = "move_right";}
	check=req.check;*/
		
	}
}

	else
		status=true;

	if(status==true)	
	res.obstacles=false;

	else
	{res.obstacles=true;

	res.result=result;}
	return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "obstacle");
  ros::NodeHandle n;

  ros::Subscriber change = n.subscribe("tb3_1/cmd_vel",5,callback_change);
  
  ros::ServiceServer service = n.advertiseService("status01", callback);
  ros::Subscriber sub1 = n.subscribe("front/scan", 5, current_obs_front);
  ros::Subscriber sub2 = n.subscribe("rear/scan", 5, current_obs_rear);

plistener=new(tf::TransformListener);

plistener->waitForTransform("map", "tb3_1/base_footprint", ros::Time::now(), ros::Duration(2.0));


  ROS_INFO("Ready to check obstacles");
  ros::spin();

  return 0;
}
