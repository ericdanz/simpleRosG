#!/usr/bin/env python

from robot_emulator.msg import *
from gatemodel import *
from geometry_msgs.msg import Twist
import rospy
import sys, time

nullTwist = Twist()

if __name__ == '__main__':
  rospy.init_node('cv_tester')
  cvPub = rospy.Publisher('cmd_vel', Twist, queue_size=2, latch=True)

  rospy.loginfo("Tester Node Started")

  while(True):
    userCmd = raw_input("Enter forward and turn, separated by a comma: ")
    fwd = int(userCmd.split(',')[0])
    turn = int(userCmd.split(',')[1])
    print "Forward: {}, Turn: {}".format(fwd,turn)
    sendInput = Twist()
    sendInput.linear.x = fwd
    sendInput.angular.z = turn
    cvPub.publish(sendInput)

    #turn it back off immediately
    time.sleep(1)
    cvPub.publish(nullTwist)
