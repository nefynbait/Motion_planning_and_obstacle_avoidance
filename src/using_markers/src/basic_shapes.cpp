#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include "geometry_msgs/PointStamped.h"
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include<iostream>
#include"geometry_msgs/Point.h"
//ros::Publisher marker_pub1;
float velx, vely;
ros::Publisher marker_pub;
ros::Publisher change01;
void callback_start_pose(const geometry_msgs::PointStamped pose1) {

	float vx,vy;	
	geometry_msgs::Point pos;
	geometry_msgs::PointStamped start_pose;	
	start_pose.header.stamp = ros::Time::now();
	start_pose.header.frame_id = "/map";
	start_pose.point.x = pose1.point.x;
	start_pose.point.y = pose1.point.y;
	printf("%f %f \n",start_pose.point.x,start_pose.point.y);
	//syaw = tf::getYaw(start_pose.pose.orientation);

	//start_pose_pub.publish(start_pose);
	
//marker_pub1.publish(start_pose);
 // ros::Rate r(1);
uint32_t shape = visualization_msgs::Marker::CUBE;
	vx=0;
	vy=0;
  while (ros::ok())
  {
    visualization_msgs::Marker marker;
    // Set the frame ID and timestamp.  See the TF tutorials for information on these.
    marker.header.frame_id = "my_frame";
    marker.header.stamp = ros::Time::now();

    // Set the namespace and id for this marker.  This serves to create a unique ID
    // Any marker sent with the same namespace and id will overwrite the old one
    marker.ns = "basic_shapes";
    marker.id = 0;

    // Set the marker type.  Initially this is CUBE, and cycles between that and SPHERE, ARROW, and CYLINDER
    marker.type = shape;

    // Set the marker action.  Options are ADD, DELETE, and new in ROS Indigo: 3 (DELETEALL)
    marker.action = visualization_msgs::Marker::ADD;

    // Set the pose of the marker.  This is a full 6DOF pose relative to the frame/time specified in the header
    marker.pose.position.x = start_pose.point.x +vx;
    marker.pose.position.y = start_pose.point.y +vy;
    marker.pose.position.z = 0;
    marker.pose.orientation.x = 0.0;
    marker.pose.orientation.y = 0.0;
    marker.pose.orientation.z = 0.0;
    marker.pose.orientation.w = 1.0;
	
	pos.x=start_pose.point.x +vx;
	pos.y=start_pose.point.y +vy;
	change01.publish(pos);
    // Set the scale of the marker -- 1x1x1 here means 1m on a side
    marker.scale.x = 1.0;
    marker.scale.y = 1.0;
    marker.scale.z = 1.0;

    // Set the color -- be sure to set alpha to something non-zero!
    marker.color.r = 0.0f;
    marker.color.g = 1.0f;
    marker.color.b = 0.0f;
    marker.color.a = 1.0;

    marker.lifetime = ros::Duration();

    // Publish the marker
    while (marker_pub.getNumSubscribers() < 1)
    {
      
	if (!ros::ok())
      {
        return;
      }
      ROS_WARN("Please create a subscriber to the marker");
      sleep(1);
    }
    marker_pub.publish(marker);
   ros::Duration(0.05).sleep();
	vx=vx +velx;
	vy=vy +vely;
    // Cycle between different shapes
  }

	
}

int main( int argc, char** argv )
{
  ros::init(argc, argv, "basic_shapes");
ros::NodeHandle n;
std::cout<<"give velocities";
std::cin>>velx;
std::cin>>vely;
   marker_pub = n.advertise<visualization_msgs::Marker>("visualization_marker", 1);
change01=n.advertise<geometry_msgs::Point>("change01", 5);
ros::Subscriber start_pose_sub = n.subscribe("/clicked_point", 1000, callback_start_pose);

//marker_pub1= n.advertise<geometry_msgs::PointStamped>("point", 1000);
  // Set our initial shape type to be a cube
	ros::spin();

}
