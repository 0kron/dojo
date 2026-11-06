#!/usr/bin/env python3
import rclpy
from rclpy.node import Node
from example_interfaces.msg import Int64

class NumberCounter(Node):
    def __init__(self):
        super().__init__("number_counter")
        self.counter_ = 0
        self.sum_ = 0
        self.number_subscriber = self.create_subscription(
                Int64,
                "number",
                self.callback_number,
                10
                )
        self.get_logger().info("Number Counter has been created.")

    def callback_number(self, msg: Int64): 
        self.counter_ += 1
        self.sum_ += msg.data
        self.get_logger().info("Counter: "+str(self.counter_)
                               + "\nSum: "+str(self.sum_)
                               + "\nOriginal: "+str(msg.data))

def main(args=None): 
    rclpy.init(args=args)
    node = NumberCounter()
    rclpy.spin(node)
    rclpy.shutdown()

if __name__ == '__main__': 
    main()
        
