#!/usr/bin/env python

from robot_emulator.msg import *
import rospy
import sys

def theSubscriber():
	#suscribe to all the topics individually
	#then call something to respond to any activity
	r = rospy.Rate(10)
	rospy.init_node('module', anonymous=True)
	#listen to the two topics coming from the robot brain
	rospy.Subscriber('reqs', Request, parseReq)
	rospy.Subscriber('inputs', Input, doInput)

	rospy.spin()

def parseReq(data):
	thisReq = data.data
	if thisReq == 'boot':
		bootResponder()
	#further request types can be added	
	#elif thisReq == ''

def doInput(data):
	#check the name on the input, if it matches this module
	#do the input if possible or publish an error

def bootResponder():
	bootPub = rospy.Publisher('boot', BootResponse, queue_size=10)
	#need a name inside the boot message, so this module will
	#be able to identify messages sent to itself
	bootString = "This is a boot string containing essential info about the module"
	rospy.loginfo(bootString)
	bootPub.publish(bootString)
		

if __name__ == '__main__':
	try:
		theSubscriber()
	except rospy.ROSInterruptException: pass
