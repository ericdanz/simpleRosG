#!/usr/bin/env python

from robot_emulator_too.msg import *
from modulemodel import *
import moduleconnection as mc
from geometry_msgs.msg import Twist
import rospy
import sys
import time


class Gate:

	def __init__(self, gnumber=1):
		rospy.Subscriber('reqs', Request, self.parseReq)
		#rospy.Subscriber('inputs', Input, self.doInput)
		self.number = gnumber
		self.module = Module()
		#is gnumber going to be port number as well?
		self.module.settype( mc.bootModule(gnumber) )	
		if (self.module.settype == "locomotion"):
			rospy.Subscriber('locomotionInputs', Twist, self.doInput)
		
	def parseReq(self,data):
		rospy.loginfo('this is parse Req')
		thisReq = data.request
		if thisReq == 'boot':
			rospy.loginfo(thisReq)
			self.bootResponder()

	def doInput(self,data):
		#check the name on the input, if it matches this module
		#do the input if possible or publish an error
		
 		#will add gate names later

		inputString = 'i/lx:{},ly:{},lz{}/ax:{},ay:{},az:{}#'.format(data.linear.x, data.linear.y, data.linear.z, data.angular.x, data.angular.y, data.angular.z)
		outString = mc.readunreliable(inputString, self.number)

		

if __name__ == '__main__':
	rospy.init_node('gate', anonymous=True)
	gate = Gate(0)
	rospy.loginfo("Gate Node Started")
	rospy.spin()
