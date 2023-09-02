#include "encoder_example/encoder.hpp"

namespace encoder
{
    // Class Making, It began when you make Instance
    Encoder::Encoder(ros::NodeHandle nh) : nh_(nh)
    {
        // Define subscriber which get Encoder's signal(angle), topic name : /encoder/angle
        encoder_signal_subscriber_ = nh_.subscribe("/encoder/angle", 1, &Encoder::signalCb, this);

        // Define publisher which send Velocity value, topic name : /encoder/velocity
        velocity_value_publisher_ = nh_.advertise<geometry_msgs::TwistStamped>("/encoder/velocity", 1);
    }
    Encoder::~Encoder() {}

    // Define Callback function of subscriber where get Encoder's signal
    void Encoder::signalCb(const geometry_msgs::TwistStamped& signal_msg)
    {
        // Declare and Store time_now and angle_now
        double time_now = signal_msg.header.stamp.toSec(); //toSec func:transform time to sec unit in header of topic
        double angle_now = signal_msg.twist.angular.z;
        // Part where store the first time value and differentiate
        if (count_>0)
        {
            // print angular value
            ROS_INFO_STREAM("Angle Value : "<< angle_now);
            // Get velocity by diffrentiate angle
            double velocity = (angle_now - angle_prev_) / (time_now - time_prev_);
            // Print velocity value
            ROS_INFO_STREAM("Velocity Value : "<< velocity);
            // Declare msg to send Velocity value
            geometry_msgs::TwistStamped msg;
            // Store time_now and calculated velocity value in msg
            msg.header.stamp = signal_msg.header.stamp;
            msg.twist.angular.z = velocity;
            // Publish messages
            velocity_value_publisher_.publish(msg);
        }
        time_prev_ = time_now;
        angle_prev_ = angle_now;
        count_++;
    }
}