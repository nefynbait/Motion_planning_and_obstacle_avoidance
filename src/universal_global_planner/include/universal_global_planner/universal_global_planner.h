#ifndef UNIVERSAL_GLOBAL_PLANNER
#define UNIVERSAL_GLOBAL_PLANNER

#include <iostream>

#include <ros/ros.h>
#include <nav_core/base_global_planner.h>
#include <costmap_2d/costmap_2d_ros.h>
#include <costmap_2d/costmap_2d.h>
#include <tf/tf.h>
#include <nav_msgs/Path.h>
#include "std_msgs/String.h"

using namespace std;

namespace universal_global_planner {

	class UniversalGlobalPlanner : public nav_core::BaseGlobalPlanner {

	public:

		ros::NodeHandle nh;
		ros::Subscriber path_sub;
		ros::ServiceClient sc;
		nav_msgs::Path path;

		UniversalGlobalPlanner();
		UniversalGlobalPlanner(std::string name, costmap_2d::Costmap2DROS* costmap_ros);

		void initialize(std::string name, costmap_2d::Costmap2DROS* costmap_ros);

		bool makePlan(const geometry_msgs::PoseStamped& start, const geometry_msgs::PoseStamped& goal, 
			std::vector<geometry_msgs::PoseStamped>& plan);

		void callback_path(const nav_msgs::Path hybrid_path);
	};
}

#endif