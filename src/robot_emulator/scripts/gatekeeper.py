#!/usr/bin/env python

from robot_emulator.msg import *
from gatemodel import *
from geometry_msgs.msg import Twist
import rospy
import sys, time

fakeTwist = Twist()
fakeTwist.linear.x = 100
fakeTwist.angular.z = 250

class Gatekeeper:

	def __init__(self):
		self.gkmodel = GateKeeperModel()
		rospy.Subscriber('boot', BootResponse, self.buildModel)
		rospy.Subscriber('outputs', Output, self.updateModel)
		rospy.Subscriber('errors', Error, self.checkError)
		rospy.Subscriber('cmd_vel', Twist, self.sendLocInput)

		reqPub = rospy.Publisher('reqs', Request, queue_size=10, latch=True)
		thisRequest = Request()
		thisRequest.request = 'boot'
		rospy.loginfo("Sending Boot Request")
		reqPub.publish(thisRequest)

	def buildModel(self,data):
		rospy.loginfo("*"+data.gatetype+"*")
		#make sure gatetype conforms to known types before creating a gate model
		if data.gatetype == 'locomotion':
			rospy.loginfo('its locomotion')
			gmodel = GateModel(data.gatetype,data.gatenumber)
			self.gkmodel.addgate(gmodel)

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

	def sendLocInput(self,mInput):
		#find which gate is the locomotive?
		try:
			for g in self.gkmodel.gates:
					if g.gtype == 'locomotion':
						lInPub = rospy.Publisher('locomotionInputs', Twist, queue_size=1, latch=True)
						#add gatetype and gatenumber to the input?
 						thisLInput = mInput
						rospy.loginfo("Sending Loc Input")
						lInPub.publish(thisLInput)
		except:
			rospy.loginfo("couldn't send")

			pass




if __name__ == '__main__':
	rospy.init_node('gatekeeper')
	gatekeeper = Gatekeeper()
	rospy.loginfo("Gatekeeper Node Started")
	rospy.spin()
