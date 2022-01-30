#include "../include/universal_global_planner/universal_global_planner.h"

#include <pluginlib/class_list_macros.h>
PLUGINLIB_EXPORT_CLASS(universal_global_planner::UniversalGlobalPlanner, nav_core::BaseGlobalPlanner)

using namespace std;

namespace universal_global_planner {

	UniversalGlobalPlanner::UniversalGlobalPlanner(){
	}

	UniversalGlobalPlanner::UniversalGlobalPlanner(string name, costmap_2d::Costmap2DROS* costmap_ros) {
		initialize(name, costmap_ros);
	}

	void UniversalGlobalPlanner::initialize(std::string name, costmap_2d::Costmap2DROS* costmap_ros) {
		
		// sc = nh.serviceClient<>("universal_global_planner_service_client");
		// sc.waitForExistence();
	}

	void UniversalGlobalPlanner::callback_path(const nav_msgs::Path hybrid_path) {
		cout << "TEST" << endl;
		path = hybrid_path;
	}

	bool UniversalGlobalPlanner::makePlan(const geometry_msgs::PoseStamped& start, const geometry_msgs::PoseStamped& goal, std::vector<geometry_msgs::PoseStamped>& plan) {
		
		cout << "Start: " << start.pose.position.x << endl;

		return true;
	}
}