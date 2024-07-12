#!/usr/bin/python3

import os
os.environ['CUDA_VISIBLE_DEVICES'] = '-1'  # Disable GPU

import rospy
from geometry_msgs.msg import Twist
import numpy as np
from tensorflow.keras.preprocessing import image
import tensorflow as tf
import cv2
from cv_bridge import CvBridge
from sensor_msgs.msg import Image
from ultralytics import YOLO


class Robot:
    def __init__(self):
        self.type = -1
        self.area = 0
        self.flag = True
        self.count = 0
        self.bridge = CvBridge()
        self.model = tf.saved_model.load('/home/nguyenhoang/turtlesim/src/mytest/src/model')  # Load your model here
        self.model_yolo = YOLO('/home/nguyenhoang/turtlesim/src/mytest/src/yolov8n.pt')
       
    def sign_callback(self, msg):
        cv_image = self.bridge.imgmsg_to_cv2(msg,'bgr8')
        result = self.model_yolo(cv_image)
        annotated_frame = result[0].plot()
        cv2.imshow("test", annotated_frame)
        img = cv2.resize(annotated_frame, (224, 224))
        x = image.img_to_array(img)
        x = np.expand_dims(x, axis=0)
        
        preds = self.model(x, training=False)  

        predicted_class = np.argmax(preds, axis=1)[0]

        self.type = predicted_class + 1
        self.area = 5500  
        if self.type == 2:  # FORWARD SIGN DETECTED
                rospy.loginfo("TURN SIGN DETECTED")
        elif self.type == 1:  # TURN SIGN DETECTED
            rospy.loginfo("TURN SIGN DETECTED")
        elif self.type == 3:  # STOP SIGN DETECTED
                rospy.loginfo("STOP SIGN DETECTED")


    def command(self, velocity, pub, loop_rate):
        if self.type == 2:  # FORWARD SIGN DETECTED
                rospy.loginfo("TURN SIGN DETECTED")
        elif self.type == 1:  # TURN SIGN DETECTED
            rospy.loginfo("FORWARD SIGN DETECTED")
        elif self.type == 3:  # STOP SIGN DETECTED
                rospy.loginfo("STOP SIGN DETECTED")
        if self.flag:
            # print('a')
            # if self.type == 2:  # FORWARD SIGN DETECTED
            #     rospy.loginfo("TURN SIGN DETECTED")
            # elif self.type == 1:  # TURN SIGN DETECTED
            #     rospy.loginfo("TURN SIGN DETECTED")
            # elif self.type == 3:  # STOP SIGN DETECTED
            #     rospy.loginfo("STOP SIGN DETECTED")
                
            start = rospy.Time.now()
            while rospy.Time.now() - start < rospy.Duration(15.0):
                velocity.linear.x = 0.3
                velocity.angular.z = 0.0
                pub.publish(velocity)
                loop_rate.sleep()

            start = rospy.Time.now()
            while rospy.Time.now() - start < rospy.Duration(7.0):
                velocity.linear.x = 0.2
                velocity.angular.z = 0.24
                pub.publish(velocity)
                loop_rate.sleep()
            
            start = rospy.Time.now()
            while rospy.Time.now() - start < rospy.Duration(19.0):
                velocity.linear.x = 0.3
                velocity.angular.z = 0.0
                pub.publish(velocity)
                loop_rate.sleep()
            start = rospy.Time.now()
            while rospy.Time.now() - start < rospy.Duration(2.0):
                velocity.linear.x = 0.3
                velocity.angular.z = -0.09
                pub.publish(velocity)
                loop_rate.sleep()
            while rospy.Time.now() - start < rospy.Duration(21.0):
                velocity.linear.x = 0.3
                velocity.angular.z = 0.0
                pub.publish(velocity)
                loop_rate.sleep()
                
            start = rospy.Time.now()
            while rospy.Time.now() - start < rospy.Duration(5.0):
                velocity.linear.x = 0.2
                velocity.angular.z = 0.3
                pub.publish(velocity)
                loop_rate.sleep()
            start = rospy.Time.now()
            while rospy.Time.now() - start < rospy.Duration(6.0):
                velocity.linear.x = 0.3
                velocity.angular.z = 0.0
                pub.publish(velocity)
                loop_rate.sleep()
            start = rospy.Time.now()
            while rospy.Time.now() - start < rospy.Duration(1.0):
                velocity.linear.x = 0.3
                velocity.angular.z = 0.1
                pub.publish(velocity)
                loop_rate.sleep()
            start = rospy.Time.now()
            while rospy.Time.now() - start < rospy.Duration(6.0):
                velocity.linear.x = 0.3
                velocity.angular.z = 0.0
                pub.publish(velocity)
                loop_rate.sleep()
            while rospy.Time.now() - start < rospy.Duration(5.0):
                velocity.linear.x = 0.0
                velocity.angular.z = 0.0
                pub.publish(velocity)
                loop_rate.sleep()
            start = rospy.Time.now()
            self.flag = False
            return


           

if __name__ == "__main__":
    rospy.init_node("robot_control_node")
    robot = Robot()
    pub = rospy.Publisher("/cmd_vel", Twist, queue_size=10)
    loop_rate = rospy.Rate(10)
    velocity = Twist()
    rospy.Subscriber("/camera/rgb/image_raw", Image, robot.sign_callback)

    while not rospy.is_shutdown():
        robot.command(velocity, pub, loop_rate)
        loop_rate.sleep()
