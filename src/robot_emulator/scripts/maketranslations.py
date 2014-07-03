from geometry_msgs.msg import Twist

def makeLocInput(message):
	lx = intTo255(message.linear.x)
	ly = intTo255(message.linear.y)
	lz = intTo255(message.linear.z)

	ax = intTo255(message.angular.x)
	ay = intTo255(message.angular.y)
	az = intTo255(message.angular.z)

	return '!i/{},{},{}/{},{},{}#'.format(lx, ly, lz, ax, ay, az)


def intTo255(number):
	newInt = int(number)
	if (newInt < -254):
		newInt = -254
	if (newInt > 254):
		newInt = 254
	return newInt
