#include<ros/ros.h>
#include<iostream>
#include<eigen3/Eigen/Dense>
#include<vector>
#include<sensor_msgs/JointState.h>

#define N_JOINT 6
using namespace Eigen;
static constexpr double a_dh[N_JOINT] = {0.00000, -0.42500, -0.39225, 0.00000, 0.00000, 0.00000};
static constexpr double d_dh[N_JOINT] = {0.089159, 0.00000, 0.00000, 0.10915, 0.09456, 0.0823};
static constexpr double alpha_dh[N_JOINT] = {1.570796327, 0, 0, 1.570796327, -1.570796327, 0};

class UR5{
private:
	ros::NodeHandle nh;
	ros::Subscriber sub;
	//Eigen::Matrix4d m;
	Matrix4d result;
public:
	UR5(){
		sub = nh.subscribe("/joint_states",10,&UR5::callback1,this);
	}
	
	Matrix4d RotZ(double rad){
       		Matrix4d m;
        	m<<     cos(rad), -sin(rad), 0, 0,
                	sin(rad), cos(rad), 0, 0,
                	0,0,1,0,
                	0,0,0,1;
        	return m;
	}

	Matrix4d TransZ(double d){
        	Matrix4d m2;
        	m2<<    1,0,0,0,
                	0,1,0,0,
	                0,0,1,d,
	                0,0,0,1;
	        return m2;
	}

	Matrix4d TransX(double a){
	        Matrix4d m2;
	        m2<<    1,0,0,a,
        	        0,1,0,0,
                	0,0,1,0,
	                0,0,0,1;
	        return m2;
	}

	Matrix4d RotX(double rad){
	        Matrix4d m3;
	        m3<<    1,0,0,0,
	                0,cos(rad),-sin(rad),0,
	                0,sin(rad),cos(rad),0,
	                0,0,0,1;
	        return m3;
	}

	void callback1 (const sensor_msgs::JointState::ConstPtr& ptr){
                const std::vector<double> &p_df = ptr->position;
		Matrix4d result1 = RotZ(p_df[0]) * TransZ(d_dh[0]) * TransX(a_dh[0]) * RotX(alpha_dh[0]);
		for(int i = 1; i<6; i++){
			result1 = result1 * (RotZ(p_df[i]) * TransZ(d_dh[i]) * TransX(a_dh[i]) * RotX(alpha_dh[i]));
		}
		result = result1;
        }
	void hprint(){
		std::cout<<"result tf matrix -"<<'\n';
		std::cout<<result<<'\n';
	}
};

int main(int argc, char *argv[])
{
	ros::init(argc, argv, "fk_main");
	UR5 ur5;
    	ros::Rate loop_rate(10);
    	while(ros::ok()){
        	ros::spinOnce();
		ur5.hprint();
        	loop_rate.sleep();
    	}
    	return 0;
}
