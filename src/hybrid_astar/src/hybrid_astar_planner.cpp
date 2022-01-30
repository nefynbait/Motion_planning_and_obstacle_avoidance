#include "../include/hybrid_astar/hybrid_astar_planner.h"

#include <pluginlib/class_list_macros.h>
PLUGINLIB_EXPORT_CLASS(hybrid_astar_planner::HybridAStarPlanner, nav_core::BaseGlobalPlanner)

using namespace std;

namespace hybrid_astar_planner {

	HybridAStarPlanner::HybridAStarPlanner(){
	}

	HybridAStarPlanner::HybridAStarPlanner(string name, costmap_2d::Costmap2DROS* costmap_ros) {
		initialize(name, costmap_ros);
	}

	// void HybridAStarPlanner::initialize(std::string name, costmap_2d::Costmap2DROS* costmap_ros) {
	// 	ros::NodeHandle private_nh("~/" + name);

	// 	global_plan_pub = private_nh.advertise<nav_msgs::Path>("global_planner", 10);


	// 	// sc = private_nh.serviceClient<hybrid_astar::GlobalPath>("hybrid_astar_planner_service");

	// 	// sc.waitForExistence();
	// }

	void HybridAStarPlanner::initialize(std::string name, costmap_2d::Costmap2DROS* costmap_ros) {
		ros::NodeHandle private_nh("~/" + name);

		// global_plan_pub = private_nh.advertise<nav_msgs::Path>("global_planner", 10);

		// make_plan_srv_ = private_nh.advertiseService("make_plan", &HybridAStarPlanner::makePlanService)

		sc = private_nh.serviceClient<hybrid_astar::GlobalPath>("/move_base/HybridAStarPlanner/hybrid_astar_planner_service");

		sc.waitForExistence();
	}


	// bool HybridAStarPlanner::makePlanService(nav_msgs::GetPlan::Request& req, nav_msgs::GetPlan::Response& resp){
	// 	makePlan(req.start, req.goal, resp.plan.poses);
		
	// 	// resp.plan.header.stamp = ros::Time::now();
    // 	// resp.plan.header.frame_id = global_frame_;

    // 	return true;
	// }

	// bool HybridAStarPlanner::makePlan(const geometry_msgs::PoseStamped& start, const geometry_msgs::PoseStamped& goal, std::vector<geometry_msgs::PoseStamped>& plan) {
		
	// 	ros::NodeHandle n;

	// 	hybrid_astar::GlobalPath p;
	// 	geometry_msgs::PoseStamped pose_stamped;

	// 	// sc.call(p);

	// 	// Clear the plan, just in case
	// 	plan.clear();

	// 	path.header.stamp = ros::Time::now();
	// 	path.header.frame_id = "/map";
	// 	path.poses.clear();

	// 	for (int i = 0; i < p.response.plan.poses.size(); ++i) {
	// 		pose_stamped.header.stamp = ros::Time::now();
	// 		pose_stamped.header.frame_id = "map";
	// 		pose_stamped.pose = p.response.plan.poses[i].pose;
	// 		path.poses.push_back(pose_stamped);
	// 		// plan.push_back(pose_stamped);
	// 	}

	// 	global_plan_pub.publish(path);

	// 	return true;
	// }

	bool HybridAStarPlanner::makePlan(const geometry_msgs::PoseStamped& start, const geometry_msgs::PoseStamped& goal, std::vector<geometry_msgs::PoseStamped>& plan) {
		

		printf("\nMakePlan funtion called\n");

		hybrid_astar::GlobalPath p;
		geometry_msgs::PoseStamped pose_stamped;

		ros::service::waitForService("/move_base/HybridAStarPlanner/hybrid_astar_planner_service", -1);	
		
		// printf("\n calling ros::service::exists\n");
		// Maybe insert some while loop for exists and check
		// while(ros::service::exists("/move_base/HybridAStarPlanner/hybrid_astar_planner_service", true)){
		// 	printf("\n waiting for hybrid_astar_planner_service to exist \n ");
		// }
		printf("\n calling hybrid_astar_planner_service \n");
		sc.call(p);


		// while(!p.response.plan.poses.size()) {
		// continue;
		// }
		
		// path.header.stamp = ros::Time::now();
		// path.header.frame_id = "/map";
		// path.poses.clear();
		// printf("\n p.response.plan.poses.size() = %d\n", p.response.plan.poses.size());
		for (int i = 0; i < p.response.plan.poses.size(); ++i) {
			// printf("\n if the for loop....\n");
			pose_stamped.header.stamp = ros::Time::now();
			pose_stamped.header.frame_id = "map";
			pose_stamped.pose = p.response.plan.poses[i].pose;
			// path.poses.push_back(pose_stamped);
			plan.push_back(pose_stamped);
		}
		// printf("\nout of for loop!\n");
		// global_plan_pub.publish(path);

		return true;
	}
}