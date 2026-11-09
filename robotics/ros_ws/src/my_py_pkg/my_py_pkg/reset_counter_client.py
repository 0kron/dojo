#!/usr/bin/env python 3
import rclpy
from rclpy.node import Node
from my_robot_interfaces.srv import ResetSum

class ResetClient(Node): 
    def __init__(self):
        super().__init__('reset_sum_client')
        self.client_ = self.create_client(ResetSum, "reset_sum")
        self.get_logger().info("Reset Sum Client Initialized")

    def call_reset_sum(self, value):
        while not self.client_.wait_for_service(1.0):
            self.get_logger().warn("Waiting for service...")
        
        request = ResetSum.Request()
        request.reset_value = value
        future = self.client_.call_async(request)
        future.add_done_callback(self.callback_reset_sum_response)

    def call_back_reset_sum_response(self, future):
        response = future.result()
        self.get_logger().info("Success flag: "+ str(response.sucess))
        self.get_logger().info("Message: "+ str(response.message))
        
