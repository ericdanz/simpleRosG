#!/usr/bin/env python

from robot_emulator.msg import *
from modulemodel import *
import rospy
import sys
import time


class Gate:

	def __init__(self, gnumber=1):
		rospy.Subscriber('reqs', Request, self.parseReq)
		rospy.Subscriber('inputs', Input, self.doInput)
		self.number = gnumber
		
	def parseReq(self,data):
		rospy.loginfo('this is parse Req')
		thisReq = data.request
		if thisReq == 'boot':
			rospy.loginfo(thisReq)
			self.bootResponder()

	def doInput(self,data):
		#check the name on the input, if it matches this module
		#do the input if possible or publish an error
		pass

	def bootResponder(self):
		rospy.loginfo('inside boot responder')
		bootPub = rospy.Publisher('boot', BootResponse, queue_size=1, latch=True)
		#need a name inside the boot message, so this module will
		#be able to identify messages sent to itself
		bootString = BootResponse()
		bootString.gatenumber = self.number
		#self.number
		bootString.gatetype = "locomotion"
		bootPub.publish(bootString)
		

if __name__ == '__main__':
	rospy.init_node('gate', anonymous=True)
	gate = Gate()
	rospy.loginfo("Gate Node Started")
	rospy.spin()
