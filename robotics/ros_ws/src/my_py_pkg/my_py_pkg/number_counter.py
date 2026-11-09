#!/usr/bin/env python3
import rclpy
from rclpy.node import Node
from example_interfaces.msg import Int64
from my_robot_interfaces.srv import ResetSum

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

        self.reset_counter_service_ = self.create_service(
                ResetSum, 
                "reset_sum",
                self.callback_reset_counter
        )
        
        self.get_logger().info("Number Counter has been created.")

    def callback_number(self, msg: Int64): 
        self.counter_ += 1
        self.sum_ += msg.data
        self.get_logger().info("Counter: "+str(self.counter_)
                               + "\nSum: "+str(self.sum_)
                               + "\nOriginal: "+str(msg.data))
    def callback_reset_counter(self, request: ResetSum.Request, response: ResetSum.Response): 
        if request.reset_value <= self.sum and request.reset_value >= 0:
            self.sum_ = request.reset_value
            self.counter_ = 1
            self.get_logger().info("Reset counter to " + str(self.counter_))
            response.success = True
            response.message = "Success"
        else: 
            self.get_logger().info("Failed to reset counter to " + str(self.counter_))
            response.success = False
            response.message = "Failure"
        return response

def main(args=None): 
    rclpy.init(args=args)
    node = NumberCounter()
    rclpy.spin(node)
    rclpy.shutdown()

if __name__ == '__main__': 
    main()
        
