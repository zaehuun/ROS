#include <ros/ros.h>
#include <ctime>
#include <cstdlib>
#include <cmath>
#include "multiple_topic_pkg/my_topic_one.h"
#include "multiple_topic_pkg/my_topic_two.h"

int main(int argc, char** argv){
	ros::init(argc,argv,"multiple_publisher");
	ros::NodeHandle nh;

	ros::Publisher first_pub = nh.advertise<multiple_topic_pkg::my_topic_one>("data_one_topic",100);
	ros::Publisher second_pub = nh.advertise<multiple_topic_pkg::my_topic_one>("my_calc_option_topic",100);
	ros::Publisher third_pub = nh.advertise<multiple_topic_pkg::my_topic_two>("data_two_topic",100);

	ros::Rate loop_rate(10);

	multiple_topic_pkg::my_topic_one data_msg1;
	multiple_topic_pkg::my_topic_one calc_msg;
	multiple_topic_pkg::my_topic_two data_msg2;

	std::srand(time(NULL));
	
	while(ros::ok()){
		data_msg1.data = rand()%10+1;
		data_msg2.data = rand() % 1000 / 100.0;
		calc_msg.data = rand()%4 + 1;

		ROS_INFO("send msg1 = %d",data_msg1.data);
		ROS_INFO("send msg2 = %f",data_msg2.data);
		if(calc_msg.data==1)
			ROS_INFO("send calc option : -");
		else if(calc_msg.data==2)
			ROS_INFO("send calc option : +");
		else if(calc_msg.data==3)
			ROS_INFO("send calc option : x");
		else if(calc_msg.data==4)
			ROS_INFO("send calc option : /");
		else{
			ROS_ERROR("calc option error!! it must be 1~4 int value!");
			exit(1);
		}
		first_pub.publish(data_msg1); 
		second_pub.publish(calc_msg);
		third_pub.publish(data_msg2);

		loop_rate.sleep();
	}
	
	return 0;
} 
