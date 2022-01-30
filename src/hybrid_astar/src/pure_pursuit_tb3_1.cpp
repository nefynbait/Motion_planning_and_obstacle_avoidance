#include "../include/hybrid_astar/pure_pursuit_tb3_1.h"
#include "hybrid_astar/obs.h"
#include "string.h"
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
#include<cmath>

using namespace std;


void pure_pursuit_tb3_1() {

// Current pose of the robot
float x_r;
float y_r;
float yaw_r;

float x_obs_1;
float y_obs_1;
float yaw_obs_1;

float x_obs_2;
float y_obs_2;
float yaw_obs_2;

float tx1;
float ty1;

float x_r1;
float y_r1;
float yaw_r1;
float roll_1;
float pitch_1;

// Current pose of the trailer
float x_t;
float y_t;
float yaw_t;

float move_ins=0;
float alpha;
float alpha1;
float phi;

float theta1;

// PID Constants
const float Kp = 0.3; // Proportional constant

// Pure Pursuit Constants
const float ld = 0.3; // look-ahead distance
const float kf = 0.1; // look forward gain
const float max_vel = 0.2; // maximum velocity
float max_ang_vel = 0.4; // maximum angular
// Backward motion
const float k = 1.0;

// Non-Linear Controller
std::vector<float> curvatures;

string result;
float check2=0;

/*	
	Callback function for "global_path" to implement the pure pursuit controller
	
	Subscribes: global_path
	Publishers: target_point, cmd_vel
*/
	
	printf("Starting Pure Pursuit Code \n");
	tf::TransformListener listener_robot;
	tf::StampedTransform transform_robot;
	listener_robot.waitForTransform("/map", "/tb3_1/base_footprint", ros::Time::now(), ros::Duration(1.0));

	/*tf::TransformListener listener_trailer;
	tf::StampedTransform transform_trailer;
	listener_trailer.waitForTransform("/map", "/tb3_1/base_footprint", ros::Time::now(), ros::Duration(2.0));*/

	tf::TransformListener listener_obs_1;
	tf::StampedTransform transform_obs_1;
	listener_obs_1.waitForTransform("/map", "/tb3_0/base_link", ros::Time::now(), ros::Duration(1.0));

	tf::TransformListener listener_obs_2;
	tf::StampedTransform transform_obs_2;
	listener_obs_2.waitForTransform("/map", "/tb3_2/base_link", ros::Time::now(), ros::Duration(1.0));


//ros::Duration(0.05).sleep();

	// Writing tracking data to rosbag
	// hybrid_astar::Tracking test;
	// rosbag::Bag bag("/home/tanujthakkar/ROS/catkin_ws/src/hybrid_astar/rosbags/tracking.bag", rosbag::bagmode::Write);
	// // bag.open("../rosbags/tracking.bag", rosbag::bagmode::Write);

	// test.reference_path.header.stamp = ros::Time::now();
	// test.reference_path.header.frame_id = "/map";
	// test.reference_path.poses.clear();

	// test.tracked_path.header.stamp = ros::Time::now();
	// test.tracked_path.header.frame_id = "/map";
	// test.tracked_path.poses.clear();

	// listener_robot.lookupTransform("map", "base_link", ros::Time(0), transform_robot);
	// geometry_msgs::PoseStamped pose_stamped;
	// float x = 0;
	// float y = 0;
	// float yaw;
	// float yawt;
	// path.header.stamp = ros::Time::now();
	// path.header.frame_id = "/map";
	// path.poses.clear();

	// trailer_path.header.stamp = ros::Time::now();
	// trailer_path.header.frame_id = "/map";
	// trailer_path.poses.clear();

	// yaw = tf::getYaw(transform_robot.getRotation());
	// yawt = tf::getYaw(transform_robot.getRotation());
	// x = transform_robot.getOrigin().x() + 0.1;// - DELTAR * cos(yaw);
	// y = transform_robot.getOrigin().y() + 0.1;// - DELTAR * sin(yaw);
	
	// // std::vector<float> path_x;
	// // std::vector<float> path_y;
	// // std::vector<float> track_x;
	// // std::vector<float> track_y;
	// float err_lat = 0;
	// float cross_track = 0;

	// float t = 0;

	// for(int i = 0; i < 400; ++i) {
	// 	pose_stamped.header.stamp = ros::Time::now();
	// 	pose_stamped.header.frame_id = "map";
	// 	// x = x + 0.1 * cos(yaw);
	// 	// y = y + 0.1 * sin(yaw);
	// 	// yaw = pi_2_pi(yaw + 0.1 / WHEELBASE * tan(to_rad(10)));
	// 	// yawt = pi_2_pi(yawt - 0.1 / RTR * sin(yaw - yawt));

	// 	x = 6 * sin(t);
	// 	y = 6 * sin(t) * cos(t);
	// 	t = t + 0.0157;
		
	// 	pose_stamped.pose.position.x = x;
	// 	pose_stamped.pose.position.y = y;
	// 	tf::Quaternion quat = tf::createQuaternionFromYaw(t);
	// 	pose_stamped.pose.orientation.x = quat.x();
	// 	pose_stamped.pose.orientation.y = quat.y();
	// 	pose_stamped.pose.orientation.z = quat.z();
	// 	pose_stamped.pose.orientation.w = quat.w();
	// 	path.poses.push_back(pose_stamped);

	// 	test.reference_path.poses.push_back(pose_stamped);
	// 	// pose_stamped.pose.position.x = x;// - ((DELTAR + 0.4) - DELTAT) * cos(yawt);
	// 	// pose_stamped.pose.position.y = y;// - ((DELTAR + 0.4) - DELTAT) * sin(yawt);
	// 	// quat = tf::createQuaternionFromYaw(yawt);
	// 	// pose_stamped.pose.orientation.x = quat.x();
	// 	// pose_stamped.pose.orientation.y = quat.y();
	// 	// pose_stamped.pose.orientation.z = quat.z();
	// 	// pose_stamped.pose.orientation.w = quat.w();
	// 	// path.poses.push_back(pose_stamped);
	// 	// trailer_path.poses.push_back(pose_stamped);

	// 	dirs.push_back(-1);
	// }

	// hybrid_path_pub.publish(path);
	// hybrid_trailer_path_pub.publish(trailer_path);

	int index = 0;
	int n = path.poses.size();
	printf("path length: %d\n", n);

	float lf;
	float tx; // target x
	float ty; // target y
	float delta;
	float delta1;

	path = tractor_path;
	// trailer_path = path;

	// cin.get();
	while(true) {
		
		listener_robot.lookupTransform("/map", "/tb3_1/base_footprint", ros::Time(0), transform_robot);
		//listener_trailer.lookupTransform("/map", "/tb3_1/base_footprint", ros::Time(0), transform_trailer);

		yaw_r = tf::getYaw(transform_robot.getRotation());
		x_r = transform_robot.getOrigin().x();// - DELTAR * cos(yaw_r);
		y_r = transform_robot.getOrigin().y();// - DELTAR * sin(yaw_r);
		// ROS_INFO("x_r: %f y_r: %f yaw_r: %f", x_r, y_r, yaw_r);

		/*yaw_t = tf::getYaw(transform_trailer.getRotation());
		// x_t = x_r;
		// y_t = y_r;
		x_t = transform_robot.getOrigin().x() - ((DELTAR + 0.4) - DELTAT) * cos(yaw_t);
		y_t = transform_robot.getOrigin().y() - ((DELTAR + 0.4) - DELTAT) * sin(yaw_t);*/
		// ROS_INFO("x_t: %f y_t: %f yaw_t: %f", x_t, y_t, yaw_t);

listener_obs_1.lookupTransform("/map", "/tb3_1/base_link", ros::Time(0), transform_obs_1);
listener_obs_2.lookupTransform("/map", "/tb3_0/base_link", ros::Time(0), transform_obs_2);

		yaw_obs_1 = tf::getYaw(transform_obs_1.getRotation());
		x_obs_1 = transform_obs_1.getOrigin().x();
		y_obs_1 = transform_obs_1.getOrigin().y();

		yaw_obs_2 = tf::getYaw(transform_obs_2.getRotation());
		x_obs_2 = transform_obs_2.getOrigin().x();
		y_obs_2 = transform_obs_2.getOrigin().y();

		lf = kf * max_vel + ld;

		// cin.get();
		// ROS_INFO("DIR: %d", dirs[index]);
		// Forward Motion Pure Pursuit Control Law
		if(dirs[index] == 1) {
			//printf("Tractor path index: %d\n", index);

			// if(abs(abs(x)-abs(x_r)) > 0.1 || abs(abs(y)-abs(y_r)) > 0.1) {
			// 	x = x_r;
			// 	y = y_r;
			// 	pose_stamped.pose.position.x = x_r;
			// 	pose_stamped.pose.position.y = y_r;
			// 	tf::Quaternion quat = tf::createQuaternionFromYaw(yaw_r);
			// 	pose_stamped.pose.orientation.x = quat.x();
			// 	pose_stamped.pose.orientation.y = quat.y();
			// 	pose_stamped.pose.orientation.z = quat.z();
			// 	pose_stamped.pose.orientation.w = quat.w();
			// 	test.tracked_path.poses.push_back(pose_stamped);
			// }

			if(abs(n - index) < 2) {
				if(hypot(x_r - path.poses[n-1].pose.position.x, y_r - path.poses[n-1].pose.position.y) < 0.4) {
					printf("Tractor path index: %d\n", index);
					ROS_INFO("GOAL REACHED!");
					check3=0;
					break;
				}
			}

			float m = hypot(x_r - path.poses[0].pose.position.x, y_r - path.poses[0].pose.position.y);
			for (int i = index; i < index + 4; ++i) {
				//printf("m: %f point: %f\n", m, hypot(x_r - path.poses[i].pose.position.x, y_r - path.poses[i].pose.position.y));
				if(hypot(x_r - path.poses[i].pose.position.x, y_r - path.poses[i].pose.position.y) < m) {
					m = hypot(x_r - path.poses[i].pose.position.x, y_r - path.poses[i].pose.position.y);
					index = i;
				}

				if(hypot(x_r - path.poses[i].pose.position.x, y_r - path.poses[i].pose.position.y) > 0.4) {
					index = i;
					break;
				}
			}

			tx = path.poses[index].pose.position.x;
			ty = path.poses[index].pose.position.y;
			geometry_msgs::PointStamped target_point;
			target_point.header.stamp = ros::Time::now();
			target_point.header.frame_id = "/map";
			target_point.point.x = tx;
			target_point.point.y = ty;
			target_point_pub.publish(target_point);

			alpha = (atan2(ty - y_r, tx - x_r) - yaw_r);
			delta = (atan2(2.0 * WHEELBASE * sin(alpha), lf));

			// err_lat = (-1 * (x_r - path.poses[index].pose.position.x) * sin(tf::getYaw(path.poses[index].pose.orientation)) + (y_r - path.poses[index].pose.position.y) * cos(tf::getYaw(path.poses[index].pose.orientation)));
			// test.err_lat.push_back((-1 * (x_r - path.poses[index].pose.position.x) * sin(tf::getYaw(path.poses[index].pose.orientation)) + (y_r - path.poses[index].pose.position.y) * cos(tf::getYaw(path.poses[index].pose.orientation))));

			// if(cross_track != (lf * sin(alpha))) {
			// 	cross_track = lf * sin(alpha);
			// 	test.cross_track.push_back(lf * sin(alpha));
			// }

			// printf("err_lat: %f cross_track: %f", err_lat, cross_track);

			geometry_msgs::Twist cmd;
			cmd.linear.x = 0.25;

			cmd.angular.z = Kp*delta;
			
			//checking obstacles
			hybrid_astar::obs srv1;
			/*srv1.request.x_r=x_r;
			srv1.request.y_r=y_r;
			srv1.request.r_r=yaw_t;
			srv1.request.check=false;
			srv1.request.theta1=yaw_t;
			//ros::service::waitForService("status01", -1);
			//client.call(srv);
			ros::service::call("status01",srv1);
			//cout<<srv1.response.result;
			//cout<<"yes";
			ros::Duration(0.03).sleep();
			obstacles = srv1.response.obstacles;
			result=srv1.response.result;*/

	cout<<x_r<<" "<<y_r<<" "<<delta<<endl;
//cout<<tx<<" "<<ty<<" "<<endl;
//cout<<"obs1:";
//cout<<x_obs_1<<" "<<y_obs_1<<" "<<yaw_obs_1<<endl;
//cout<<"obs2:";
//cout<<x_obs_2<<" "<<y_obs_2<<" "<<yaw_obs_2<<endl;
			float check=0;
			ros::Time start=ros::Time::now();
			double dt =0;
			//tx1=x_r + 1.5;
			//ty1=y_r + 3;
			//yaw_r1 = yaw_t;
			//theta1 = yaw_r1;
			cout<<move_ins<<endl;
			while(false)
			{				
				if(result=="move_left")
				theta1=1;
				
				else
				theta1=-1;				
				if(check==0)
				{
					start = ros::Time::now();
					check=1;
				}
				geometry_msgs::Twist cmd2;
				if(result=="stop")
				{cmd2.linear.x = 0;
				cmd2.angular.z = 0;
				cmd_pub.publish(cmd2);
				srv1.request.x_r=x_r;
			srv1.request.y_r=y_r;
			srv1.request.r_r=yaw_t;
								ros::service::call("status01",srv1);
				obstacles = srv1.response.obstacles;
				result=srv1.response.result;}
				
				else if(move_ins>50)
				{
				/*while(result!="stop")
				{cout<<"T:"<<tx1<<" "<<ty1<<endl;
				cout<<"R:"<<x_r1<<" "<<y_r1<<endl;
				cout<<"kl"<<endl;
				listener_robot.lookupTransform("/map", "/tb3_1/base_footprint", ros::Time(0), transform_robot);
				yaw_r1 = tf::getYaw(transform_robot.getRotation());
				x_r1 = transform_robot.getOrigin().x();// - DELTAR * cos(yaw_r);
				y_r1 = transform_robot.getOrigin().y();
				alpha1 = (theta1-yaw_r1);
				delta1 = min(max_ang_vel,(float)(atan2(2.0 * WHEELBASE * sin(alpha1), lf)));
				cmd2.linear.x=0.4;
				cmd2.angular.z=delta1;
				//cout<<delta1<<endl;

				//if(hypot((x_r1-tx1),(y_r1-ty1))<0.4)
				//cmd2.linear.x=0;				
	
				srv1.request.x_r=x_r1;
				srv1.request.y_r=y_r1;
				srv1.request.r_r=(yaw_r1);
				srv1.request.check=true;
				//cout<<yaw_r1<<endl;
				ros::service::call("status01",srv1);
				obstacles = srv1.response.obstacles;
				result=srv1.response.result;
				cout<<result<<endl;
				cmd_pub.publish(cmd2);}*/

				yaw_r1 = tf::getYaw(transform_robot.getRotation());

				temp_goal2.pose.position.x=transform_robot.getOrigin().x() + 0.5*cos(yaw_r1) + 3*theta1*sin(-yaw_r1);

				temp_goal2.pose.position.y=transform_robot.getOrigin().y() - 0.5*sin(-yaw_r1) + 3*theta1*cos(yaw_r1);
				roll_1 = 0;
				pitch_1 = 0;
				yaw_r1+=theta1*1.57;				
				tf::Quaternion q=tf::createQuaternionFromRPY(roll_1,pitch_1,yaw_r1);
				geometry_msgs::Quaternion quat_msg;
				//yaw_r1 = tf::getYaw(transform_robot.getRotation());		
				//tf2::convert(quat_msg, q);
				//quat_msg = tf2::toMsg(quat_tf);
				//tf2::fromMsg(quat_msg, q);
				//geometry_msgs::Quaternion odom_quat;
//quat_msg.setRPY(roll_1, pitch_1, yaw_r1);
				tf::quaternionTFToMsg(q, quat_msg);
				temp_goal2.pose.orientation=quat_msg;


				

				temp_goal.pose.pose.position.x=transform_robot.getOrigin().x();
				temp_goal.pose.pose.position.y=transform_robot.getOrigin().y();
				q = transform_robot.getRotation();
				//geometry_msgs::Quaternion quat_msg;
				yaw_r1 = tf::getYaw(transform_robot.getRotation());		
				roll_1 = tf::getYaw(transform_robot.getRotation());
				pitch_1 = tf::getYaw(transform_robot.getRotation());
				//tf2::convert(quat_msg, q);
				//quat_msg = tf2::toMsg(quat_tf);
				//tf2::fromMsg(quat_msg, q);
				//geometry_msgs::Quaternion odom_quat;
//quat_msg.setRPY(roll_1, pitch_1, yaw_r1);
				tf::quaternionTFToMsg(q, quat_msg);
				temp_goal.pose.pose.orientation=quat_msg;
				check3=1;
				move_ins=0;
				temp_goal.header.stamp = ros::Time::now();
				temp_goal.header.frame_id = "map";

				temp_goal2.header.stamp = ros::Time::now();
				temp_goal2.header.frame_id = "map";
				return;				
				}	
				else
				{move_ins++;
				cout<<move_ins<<endl;
				break;}			
				//printf("blocked");
								ros::service::call("status01",srv1);
				obstacles = srv1.response.obstacles;
				result=srv1.response.result;
			}
			if(check==1)
			{
			dt=ros::Time::now().toSec()-start.toSec();		
			std::cout<<dt<<endl;
			}
			// printf("alpha: %f alpha_: %f delta: %f linear: %f\n", alpha, alpha_, delta, cmd.linear.x);
			cmd_pub.publish(cmd);
		}

		// Reverse Motion Pure Pursuit Control Law
		if(dirs[index] == -1) {
			//printf("Trailer path index: %d\n", index);

			// if(abs(abs(x)-abs(x_t)) > 0.1 || abs(abs(y)-abs(y_t)) > 0.1) {
			// 	x = x_t;
			// 	y = y_t;
			// 	pose_stamped.pose.position.x = x_t;
			// 	pose_stamped.pose.position.y = y_t;
			// 	tf::Quaternion quat = tf::createQuaternionFromYaw(yaw_t);
			// 	pose_stamped.pose.orientation.x = quat.x();
			// 	pose_stamped.pose.orientation.y = quat.y();
			// 	pose_stamped.pose.orientation.z = quat.z();
			// 	pose_stamped.pose.orientation.w = quat.w();
			// 	test.tracked_path.poses.push_back(pose_stamped);
			// }

			if(abs(n - index) < 2) {
				if(hypot(x_t - trailer_path.poses[n-1].pose.position.x, y_t - trailer_path.poses[n-1].pose.position.y) < 0.3) {
					ROS_INFO("GOAL REACHED!");
					break;
				}
			}

			float m = hypot(x_t - trailer_path.poses[0].pose.position.x, y_t - trailer_path.poses[0].pose.position.y);
			for (int i = index; i < index + 4; ++i) {
				if(hypot(x_t - trailer_path.poses[i].pose.position.x, y_t - trailer_path.poses[i].pose.position.y) < m) {
					m = hypot(x_t - trailer_path.poses[i].pose.position.x, y_t - trailer_path.poses[i].pose.position.y);
					index = i;
				}
				// printf("m: %f point: %f\n", m, hypot(x_t - path.poses[i].pose.position.x, y_t - path.poses[i].pose.position.y));
			}

			for (int i = index; i < index + 4; ++i) {
				if(hypot(x_t - trailer_path.poses[i].pose.position.x, y_t - trailer_path.poses[i].pose.position.y) > 0.1) {
					index = i;
					break;
				}
			}

			tx = trailer_path.poses[index].pose.position.x;
			ty = trailer_path.poses[index].pose.position.y;
			geometry_msgs::PointStamped target_point;
			target_point.header.stamp = ros::Time::now();
			target_point.header.frame_id = "/map";
			target_point.point.x = tx;
			target_point.point.y = ty;
			target_point_pub.publish(target_point);
			// // alpha=atan2((yd(i)-y2),(xd(i)-x2))-beta2
			// // delta_des=atan(d*(K*sign(v1)*(phi+atan(2*d*sin(alpha)/lookahead_dist))-sin(phi)/e));

			phi = pi_2_pi(yaw_r - yaw_t) * -1.0;
			alpha = pi_2_pi(atan2(ty - y_t, tx - x_t) - yaw_t);

			// test.err_lat.push_back((-1 * (x_t - trailer_path.poses[index].pose.position.x) * sin(tf::getYaw(trailer_path.poses[index].pose.orientation)) + (y_t - trailer_path.poses[index].pose.position.y) * cos(tf::getYaw(trailer_path.poses[index].pose.orientation))));
			
			// if(cross_track != (lf * sin(alpha))) {
			// 	cross_track = lf * sin(alpha);
			// 	test.cross_track.push_back(lf * sin(alpha));
			// }

			delta = -0.1 * (k * -1.0 * (phi + atan(2 * RTR * sin(alpha)/lf)) - sin(phi)/RTR);

			// printf(" err_lat: %f cross_track: %f\n", err_lat, cross_track);

			geometry_msgs::Twist cmd;
			cmd.linear.x = -0.1;
			// cmd.linear.x = min((float)-0.2, -abs(err_lat));
			cmd.angular.z = delta;
			cmd_pub.publish(cmd);
			// printf("phi: %f alpha: %f delta: %f linear: %f\n", phi, alpha, delta, cmd.linear.x);
		}
	}

	// cout << "err_lat: " << *max_element(err_lat.begin(), err_lat.end()) << endl;
	// cout << "cross_track: " << *max_element(cross_track.begin(), cross_track.end()) << endl;
	// for (int j = 0; j < track_x.size(); ++j) {
	// 	printf("%f ,", track_x[j]);
	// }

	// bag.write("Tracking", ros::Time::now(), test);
	// bag.close();
}
