#include<ros/ros.h>
#include<tf/transform_broadcaster.h>
#include<string>
#include<cmath>
#include<gazebo_msgs/LinkStates.h>
#include<geometry_msgs/Twist.h>
#include<vector>
#include<iostream>

#define radi 3.14159265359 / 180

class CustomGazeboSubscriber{
public:
    CustomGazeboSubscriber()
    : private_nh("~")
    , left_vel(0.0)
    , right_vel(0.0)
    , base_vel(0.0)
    {
        gazebo_sub = nh.subscribe("/gazebo/link_states", 100, &CustomGazeboSubscriber::callbackGazeboLinkStates, this);
        
        /* 
            ~ 부분을 채워야함.
            ROS에서 제공하는 파라미터파일 yaml파일을 사용함.
            yaml파일을 load하는 부분은 launch파일에 작성이 되어있음.
        */
        if(!private_nh.getParam("/mobile_robot_odometry/base_link_id", base_link_id)) throw std::runtime_error("set base_link_id");
        if(!private_nh.getParam("/mobile_robot_odometry/odom_link_id", odom_link_id)) throw std::runtime_error("set odom_link_id");
        if(!private_nh.getParam("/mobile_robot_odometry/leftwheel_linkname", wheel_1_id)) throw std::runtime_error("set wheel_1_id");
        if(!private_nh.getParam("/mobile_robot_odometry/rightwheel_linkname", wheel_3_id)) throw std::runtime_error("set wheel_3_id");
    }


    float calc(float x, float y, float z){
		float v = sqrt(pow(x,2) + pow(y,2) + pow(z,2));
    		return v;
    }
	
    void callbackGazeboLinkStates(const gazebo_msgs::LinkStates::ConstPtr& ptr){

	const std::vector<std::string> &names = ptr->name;
	
	geometry_msgs::Twist wheel1;
	geometry_msgs::Twist wheel3;
	
	int size = names.size();
	int index1, index2;
	for(int i = 0; i<size; i++){
		if(!names[i].compare(wheel_1_id)) wheel1 = ptr->twist[i];
		if(!names[i].compare(wheel_3_id)) wheel3 = ptr->twist[i];
	}
	
	left_vel = calc(wheel1.linear.x, wheel1.linear.y, wheel3.linear.z);
	right_vel = calc(wheel3.linear.x, wheel3.linear.y, wheel3.linear.z);
	base_vel = (left_vel + right_vel) / 2.0;
        /*  
            ptr->name에 leftwheel_linkname(wheel_1_id), 
            rightwheel_linkname(wheel_3_id)과 같은 인덱스를 찾는다

            wheel1, wheel3에 대한 인덱스를 찾아 각 바퀴의 x,y,z 축 마다의 속도 값을 구한다.
            속도값은
            {
                twist[]:
                    linear:
                        x;
                        y;
                        z;
            }
            과 비슷한 형태로 정의되어 받아진다.

            각 축의 속도 벡터에 대한 해당 바퀴의 전진 속도 구하는 식 : 
            v = √(x^2 + y^2 + z^2)
            robot total velocity = (left_velocity + rigth_velocuty) / 2.0

            위의 정보를 이용하여 Gazebo상에서 움직이는 로봇의 바퀴 속도 정보를 생성하는 함수를 만든다.
        */
    }

    void get_v(){
        ROS_INFO("----------------------------");
        ROS_INFO("base_link_id   = %s", base_link_id.c_str());
        ROS_INFO("odom_link_id   = %s", odom_link_id.c_str());
        ROS_INFO("wheel_1_id     = %s", wheel_1_id.c_str());
        ROS_INFO("wheel_3_id     = %s", wheel_3_id.c_str());
        ROS_INFO("left_velocity  = %f", left_vel);
        ROS_INFO("right_velocity = %f", right_vel);
        ROS_INFO("base_velocity  = %f", base_vel);
    }

private:
    ros::NodeHandle nh;
    ros::NodeHandle private_nh;
    ros::Subscriber gazebo_sub;
    
    std::string wheel_1_id;
    std::string wheel_3_id;
    std::string base_link_id;
    std::string odom_link_id;

    double left_vel;
    double right_vel;
    double base_vel;
};

int main(int argc, char *argv[])
{
    ros::init(argc, argv, "custom_gazebo_subscriber");
    CustomGazeboSubscriber CGS;
    ros::Rate loop_rate(30);

    while(ros::ok()){
        ros::spinOnce();
        CGS.get_v();
        loop_rate.sleep();
    }
    return 0;
}
