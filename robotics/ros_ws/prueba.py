#!/usr/bin/env python3
import rclpy                              ## Python ROS2 Lib
from rclpy.node import Node               ## Base node object
from unitree_go.msg import WirelessController
from time import sleep

class PruebaAvance(Node):                 ## New node with parent Node
    def __init__(self):
        super().__init__('prueba_avance')
        self.action_publisher_ = self.create_publisher(WirelessController, 'wirelesscontroller', 10)
        self.publish_travel()
        self.get_logger().info("Prueba Sit initialized.") ## Prints on startup

    def publish_travel(self):
        msg = WirelessController()
        msg.rx = 0.6
        self.action_publisher_.publish(msg)
        sleep(1.5)
        msg.rx = 0.0
        msg.ly = 0.6
        self.action_publisher_.publish(msg)
        sleep(2)
        msg.ly = 0.0
        msg.rx = -0.6
        self.action_publisher_.publish(msg)
        sleep(3)
        msg.ly = 0.6
        msg.rx = 0.0
        self.action_publisher_.publish(msg)
        sleep(2)

    def __del__(self):
        msg = WirelessController()
        msg.rx = 0.0
        msg.ly = 0.0
        self.action_publisher_.publish(msg)


def main(args=None):
    rclpy.init(args=args)                 ## Initilize communication with ROS 2
    node = PruebaAvance()                 ## Creation of a new node
    rclpy.spin(node)                      ## spin() blocks the execution
    rclpy.shutdown()                      ## end communication with ROS 2

if __name__ == '__main__':
    main()
