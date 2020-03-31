#include <ros/ros.h>
#include <cstdlib>
#include "multiple_topic_pkg/my_topic_one.h"
#include "multiple_topic_pkg/my_topic_two.h"

class MultipleSubscriber{
public:
	MultipleSubscriber():data1(0), data2(0.0), calc_option(1), total_data(0.0){
		data_sub1 = nh.subscribe("data_one_topic",100,&MultipleSubscriber::save_data_one,this);
		data_sub2 = nh.subscribe("data_two_topic",100,&MultipleSubscriber::save_data_two,this);
		calc_sub = nh.subscribe("my_calc_option_topic",100,&MultipleSubscriber::save_calc_data,this);
		total_pub = nh.advertise<multiple_topic_pkg::my_topic_two>("total_topic",10);
	}
	
	void save_data_one(const multiple_topic_pkg::my_topic_one::ConstPtr& msg){
		ROS_INFO("received DARA ONE : %d", msg->data);
		data1 = msg->data;
	}
	
	void save_data_two(const multiple_topic_pkg::my_topic_two::ConstPtr& msg){
		ROS_INFO("received DATA TWO : %f", msg->data);
		data2 = msg->data;
	}

	void save_calc_data(const multiple_topic_pkg::my_topic_one::ConstPtr& msg){
		if(msg->data == 1)
			ROS_INFO("calc option : -");
		else if(msg->data ==2)
			ROS_INFO("calc option : +");
		else if(msg->data==3)
			ROS_INFO("calc option : x");
		else if(msg->data==4)
			ROS_INFO("calc option : /");
		
		calc_option = msg->data;
	}

	void total_publish(){
		multiple_topic_pkg::my_topic_two total_msg;
		if(calc_option==1)
			total_data = data1 - data2;
		else if(calc_option==2)
			total_data = data1 + data2;
		else if(calc_option==3)
			total_data = data1 * data2;
		else if(calc_option==4)
			total_data - data1 / data2;
	
		total_msg.data = total_data;
		total_pub.publish(total_msg);
		ROS_INFO("total data is %f", total_data);
	}

private:
	ros::NodeHandle nh;
	ros::Subscriber data_sub1;
	ros::Subscriber data_sub2;
	ros::Subscriber calc_sub;

	ros::Publisher total_pub;

	int data1, calc_option;
	double data2, total_data;
};

int main(int argc, char** argv){
	ros::init(argc,argv,"multiple_sub");
	MultipleSubscriber MS;

	ros::Rate loop_rate(10);

	while(ros::ok()){
		loop_rate.sleep();
		ros::spinOnce();
		MS.total_publish();
	}
	
	return 0;
}
