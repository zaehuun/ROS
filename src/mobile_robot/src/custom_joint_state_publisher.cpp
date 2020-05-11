#include <string>
#include <ros/ros.h>
#include <sensor_msgs/JointState.h>
#include <tf/transform_broadcaster.h>
#include <vector>


class CustomJointStatePublisher{
private:
	ros::NodeHandle n;
	ros::Publisher joint_pub;
	sensor_msgs::JointState joint_state;
	std::vector<std::string> joint_name;
	std::vector<int> joint_positions;
public:
	CustomJointStatePublisher(){
		if(!n.getParam("/joint_goal/joint_name",joint_name))
			throw std::runtime_error("set joint name");

		if(!n.getParam("/joint_goal/joint_positions",joint_positions))
			throw std::runtime_error("set joint positions");
		joint_pub = n.advertise<sensor_msgs::JointState>("joint_states",1);
	}

	void pub(){
		joint_state.header.stamp = ros::Time::now();
		joint_state.name.push_back(joint_name[0].c_str());
		joint_state.position.push_back(joint_positions[0]);
		joint_state.name.push_back(joint_name[1].c_str());
                joint_state.position.push_back(joint_positions[1]);
		joint_state.name.push_back(joint_name[2].c_str());
                joint_state.position.push_back(joint_positions[2]);
		joint_state.name.push_back(joint_name[3].c_str());
                joint_state.position.push_back(joint_positions[3]);

		joint_pub.publish(joint_state);
		
	}
};

int main(int argc, char** argv){
	ros::init(argc,argv,"custom_joint_state_publisher");
	
	CustomJointStatePublisher c;

	ros::Rate loop_rate(30);

	while(ros::ok()){
		c.pub();
		loop_rate.sleep();
	}

	return 0;
}
