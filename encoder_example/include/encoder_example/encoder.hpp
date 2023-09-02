#ifndef ENCODER_
#define ENCODER_

#include <iostream>
#include <stdint.h>

#include "ros/ros.h"
#include "geometry_msgs/TwistStamped.h"

using namespace std;

namespace encoder
{
    class Encoder
    {
    public:
        Encoder(ros::NodeHandle nh);
        ~Encoder();

    private:
        ros::NodeHandle nh_;

    public:
        // Declare which get Encoder's signal(degree)
        ros::Subscriber encoder_signal_subscriber_;
        // Declare callback func. which get Encoder's signal
        void signalCb(const geometry_msgs::TwistStamped& signal_msg);
        // Declare variables For differential of degree
        double time_prev_;
        double angle_prev_;
        int count_;
        // Declare publisher which sends calculated velocity
        ros::Publisher velocity_value_publisher_;
    };
}

#endif