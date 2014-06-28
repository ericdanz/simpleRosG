#!/usr/bin/env python

from robot_emulator.msg import *
from gatemodel import *
from geometry_msgs.msg import Twist
import rospy
import sys
import time

fakeTwist = Twist()
#fakeTwist.linear.x = 100
fakeTwist.angular.z = 200

class Gatekeeper:

	def __init__(self):
		self.gkmodel = GateKeeperModel()
		rospy.Subscriber('boot', BootResponse, self.buildModel)
		rospy.Subscriber('outputs', Output, self.updateModel)
		rospy.Subscriber('errors', Error, self.checkError)

		reqPub = rospy.Publisher('reqs', Request, queue_size=10, latch=True)
		thisRequest = Request()
		thisRequest.request = 'boot'
		rospy.loginfo("Sending Boot Request")
		reqPub.publish(thisRequest)

	def buildModel(self,data):
		rospy.loginfo("*"+data.gatetype+"*")
		#make sure gatetype conforms to known types before creating a gate model
		if data.gatetype == 'locomotion':	
			gmodel = GateModel(data.gatetype,data.gatenumber)		
			self.gkmodel.addgate(gmodel)
			#this is a hack to send a Twist and test the system
			self.sendInput(gmodel,fakeTwist)
		elif data.gatetype == 'sensor':
			gmodel = GateModel(data.gatetype, data.gatenumber)
			self.gkmodel.addgate(gmodel)		
		print self.gkmodel

	def updateModel(self,data):
		pass

	def checkError(self,data):
		pass

	def sendReq(self,message):
		#this will take a message from the rest of the system, sort and translate 
		#it and send it off to the gates		
		pass
	
	def sendInput(self,gate,mInput):
		if gate.gtype == 'locomotion':
			lInPub = rospy.Publisher('locomotionInputs', Twist, queue_size=2, latch=True)
			#clear the pipes
			newLInput = Twist()
			rospy.loginfo("Sending Loc Input")
			lInPub.publish(newLInput)
			lInPub.publish(newLInput)
			thisLInput = Twist()


			#should probably be a try or something here
			thisLInput = mInput
			rospy.loginfo("Sending Loc Input")
			lInPub.publish(thisLInput)

			#then stop the motors
			time.sleep(2)
			newLInput = Twist()
			rospy.loginfo("Sending Loc Input")
			lInPub.publish(newLInput)


if __name__ == '__main__':
	rospy.init_node('gatekeeper')
	gatekeeper = Gatekeeper()
	rospy.loginfo("Gatekeeper Node Started")
	rospy.spin()
	
