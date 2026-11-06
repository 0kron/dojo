#!/usr/bin/env python3
import rclpy
from rclpy.node import Node
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose

# Objectives: 
# - 1. [X] Turtle Moving in Circles
# - 2. [X] Turtle Moving faster on right side

# Insights: 
# turtlesim_node creates for every turtle the following topics: 
# /turtleX/cmd_vel -> geometry_msgs/msg/Twist
# /turtleX/color_sensor
# /turtleX/pose -> turtlesim/msg/Pose

## Interfaces of interest: 
# 1. /turtleX/cmd_vel ==> geometry_msgs/msg/Twist
# # This expresses velocity in free space broken into its linear and angular parts.
# 
# Vector3  linear
#         float64 x
#         float64 y
#         float64 z
# Vector3  angular
#         float64 x
#         float64 y
#         float64 z
# 
# 
# 2. /turtleX/pose ==> turtlesim/msg/Pose
# float32 x
# float32 y
# float32 theta
# 
# float32 linear_velocity
# float32 angular_velocity

class TurtleController(Node): 
    def __init__(self):
        super().__init__('turtle_controller')
        self.ang_vel_ = 1.0
        self.lin_vel_ = 1.0
        self.velocity_control_ = self.create_publisher(Twist, "turtle1/cmd_vel", 10)
        self.turtle_position_ = self.create_subscription(Pose, "turtle1/pose", self.callback_pos, 10)
        self.get_logger().info('Turtle Controler has been initialized.')

    def callback_pos(self, msg: Pose): 
        if msg.x > 5.5: 
            self.lin_vel_ = 2.0
            self.ang_vel_ = 2.0
        else: 
            self.lin_vel_ = 1.0
            self.ang_vel_ = 1.0

        new = Twist()
        new.linear.x = self.lin_vel_
        new.angular.z = self.ang_vel_
        self.velocity_control_.publish(new)


def main(args=None): 
    rclpy.init(args=args)
    node = TurtleController()
    rclpy.spin(node)
    rclpy.shutdown()

if __name__ == '__main__': 
    main()
