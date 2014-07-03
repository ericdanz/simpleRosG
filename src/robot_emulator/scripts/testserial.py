import moduleconnection as mc
import serial, time
'''
def readunreliable(instring, port):
	serialworked = 0
	#give it three chances, if there is no response then stop trying to talk to the port
	chances = 3
	print 'input string: {}'.format(instring)
	repstring = ''
	port = '/dev/ttyACM{}'.format(port)
	print port
	while not(serialworked):
		ser1 = serial.Serial(port, baudrate=9600, timeout=3)
		ser1.write("#")
		time.sleep(2)
		ser1.write(instring)
		#time.sleep(1)
		#ser1.write(instring)
		respstring = ser1.read(1)
		while (repstring != '#'):
			repstring = ser1.read(1)
		print 'got inside it now'
		instring = ser1.read(1)
		repstring = ''
		while (instring !="#"):
			repstring += instring
			instring = ser1.read(1)
		#if len(repstring) and repstring[0] != '#':
		#	repstring = ser1.readline()
		#	ser1.write(instring)
		#print 'this is what came back {}  x'.format(repstring)
		#check for completeness - two hashmarks
		#print repstring.index('#',1)
		'''		'''
		index1 = -1
		index2 = -1
		try:
			index1 = repstring.index('#')
		except ValueError:
			index1 = -2
		try:
			index2 = repstring.index('#',1)
		except ValueError:
			print 'second not found'
			print repstring
			index2 = -2

		#and (index2 > 0):
		if (index1 > 0): 
		'''   '''
		if (len(repstring)):
			serialworked = 1
		else:
			chances = chances - 1			
		
		if not chances and not serialworked:
			return 'noresp'
	print repstring
	return respstring
'''


while(True):
	instringer = raw_input("Enter something to send down the tube: ")
	print "this is the output {}".format(mc.readunreliable(instringer,3))
