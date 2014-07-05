#!/usr/bin/env python

import bluetooth, time
import blueconnection as blueconn
from geometry_msgs.msg import Twist
import rospy
import sys, time

muuid = "8ce255c0-200a-11e0-ac64-0800200c9a66"
sock = bluetooth.BluetoothSocket(bluetooth.RFCOMM)
blueconn.findservice(muuid,sock)


locPub = rospy.Publisher('cmd_vel', Twist, queue_size=2, latch=True)

#round numbers for output
def myRound(x, base=10):
    return int(base * round(float(x)/base))

def blueNode():
 	locPub = rospy.Publisher('cmd_vel', Twist, queue_size=2, latch=True)
	locTwist = Twist()
	#locPub.publish(locTwist)

	blueconn.findservice(muuid,sock)
	notconnected = 1
	while(notconnected):
		try:
			if sock.getpeername()[1] == 0:
	        		notconnected = 1
	         		time.sleep(.5)
       	        	else:
       	         		notconnected = 0
		except IOError:
        		notconnected = 1
	boo = 1
	while (boo):
        	rawdata = blueconn.listen(sock)
        	if (rawdata):
                	#rospy.loginfo("Raw Data: {}".format(rawdata))
			valuesList = rawdata.split(";")
			for vL in valuesList:
				values = vL.split(" ")
				try:
					locTwist.linear.x = myRound(float(values[1]), 10)
					locTwist.angular.z = myRound(float(values[3]), 10)
				except:
					pass
			locPub.publish(locTwist)
			rospy.loginfo("Location sent: Forward: {}, Turn: {}".format(locTwist.linear.x,locTwist.angular.z))

        	if (rawdata == 'end'):
                	boo = 0



if __name__ == '__main__':
	rospy.init_node('bluenode')

	rospy.loginfo("Blue Node Started")
	blueNode()
	rospy.spin()
