from geometry_msgs.msg import Twist

def makeLocInput(message):
	lx = intTo255(data.linear.x)
	ly = intTo255(data.linear.y)
	lz = intTo255(data.linear.z)

	ax = intTo255(data.angular.x)
	ay = intTo255(data.angular.y)
	az = intTo255(data.angular.z)

	return '!i/{},{},{}/{},{},{}#'.format(lx, ly, lz, ax, ay, az)


def intTo255(number):
	newInt = int(number)
	if (newInt < -254):
		newInt = -254
	if (newInt > 254):
		newInt = 254
	return newInt
