#ifndef HYBRID_ASTAR_PLANNER
#define HYBRID_ASTAR_PLANNER

#include <iostream>

#include <ros/ros.h>
#include <nav_core/base_global_planner.h>
#include <costmap_2d/costmap_2d_ros.h>
#include <costmap_2d/costmap_2d.h>
#include <tf/tf.h>
#include <nav_msgs/Path.h>
#include <std_msgs/String.h>
#include <hybrid_astar/GlobalPath.h>

#include <geometry_msgs/PoseStamped.h>
#include <angles/angles.h>
#include <base_local_planner/world_model.h>
#include <base_local_planner/costmap_model.h>

using namespace std;

namespace hybrid_astar_planner {

	class HybridAStarPlanner : public nav_core::BaseGlobalPlanner {

	public:

		HybridAStarPlanner();
		HybridAStarPlanner(std::string name, costmap_2d::Costmap2DROS* costmap_ros);

		void initialize(std::string name, costmap_2d::Costmap2DROS* costmap_ros);

		bool makePlan(const geometry_msgs::PoseStamped& start, const geometry_msgs::PoseStamped& goal, 
			std::vector<geometry_msgs::PoseStamped>& plan);

		// bool makePlanService(nav_msgs::GetPlan::Request& req, nav_msgs::GetPlan::Response& resp);

	// private:
	// 	ros::NodeHandle nh;
	// 	ros::Publisher global_plan_pub;
	// 	ros::ServiceClient sc;

	// 	nav_msgs::Path path;
	protected:
		// ros::NodeHandle nh;
		ros::Publisher global_plan_pub;
		ros::ServiceClient sc;
		// ros::ServiceServer make_plan_srv_;

		nav_msgs::Path path;
	};
}

#endif
