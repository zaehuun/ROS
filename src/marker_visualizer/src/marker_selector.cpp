#include <ros/ros.h>
#include <marker_visualizer_msgs/marker_info.h>

class MarkerSelector{
	public:

		ros::NodeHandle nh;
		ros::Publisher pub;

		std::string shape;
		marker_visualizer_msgs::marker_info msg;
		int idx;

		MarkerSelector():idx(0), shape("sphere") {
			pub = nh.advertise<marker_visualizer_msgs::marker_info>("marker_info",10);
		}

		void genMsg(){
			static struct{
				int x;
				int y;
			}shape_coordinate[4] = {{1,1},{1,-1},{-1,-1},{-1,1}};

			if(!nh.getParam("/shape", shape))
				ROS_INFO("/shape parameter not exist!");

			msg.x = shape_coordinate[idx].x;
			msg.y = shape_coordinate[idx].y;
			msg.shape = shape;

			idx = (idx + 1) % 4;
		}

		void publish(){
			pub.publish(msg);
		}
};

int main(int argc, char** argv){
	ros::init(argc,argv,"marker_selector");
	MarkerSelector ms;

	ros::Rate loop_rate(10);
	while(ros::ok()){
		ms.genMsg();
		ms.publish();
		loop_rate.sleep();
	}
	
	return 0;
}
