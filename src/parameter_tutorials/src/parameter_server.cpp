#include <ros/ros.h>
#include "parameter_tutorials/SrvTutorial.h"

enum {PLUS=1, MINUS, MULTIPLICATION, DIVISION};
class SimpleCalculator{
private:
	ros::NodeHandle nh;
	ros::ServiceServer parameter_server;
	int op;
public:
	SimpleCalculator():op(1){
		parameter_server = nh.advertiseService("parameter_tutorial",&SimpleCalculator::calculation,this);
		nh.setParam("calculation_method",op);
	}

	bool calculation(parameter_tutorials::SrvTutorial::Request &req,
		parameter_tutorials::SrvTutorial::Response &res){
		nh.getParam("calculation_method",op);
		switch(op){
			case PLUS:
				res.result = req.a+req.b; break;
			case MINUS:
				res.result = req.a-req.b; break;
			case MULTIPLICATION:
				res.result = req.a*req.b; break;
			case DIVISION:
				res.result = (req.b==0) ? 0 : req.a/req.b; break;
			default:
				ROS_WARN("UNKNOWN OPERATOR TYPE. It must be 1, 2, 3, 4. The value of operator is %d", op);
				break;
		}
		ROS_INFO("request: x=%ld, y=%ld",static_cast<long int>(req.a), static_cast<long int>(req.b));
        	ROS_INFO("sending back response : %ld", static_cast<long int>(res.result));
        	return true;
	}				
};
	
	
int main(int argc, char** argv){
	ros::init(argc, argv, "parameter_server");
	SimpleCalculator ca;
	ROS_INFO("ready srv server!");
	ros::spin();
	
	return 0;
}
