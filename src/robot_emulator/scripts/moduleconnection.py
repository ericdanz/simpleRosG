import modulemodel, serial, time, threading
import multiprocessing


def readunreliable(instring, port):
	port = '/dev/ttyACM{}'.format(port)
	#might need to switch back to 19200, if this stacks too much on the input buffer on the arduino
	ser1 = serial.Serial(port, baudrate=57600, timeout=1)
	#ser1.write("#")
	#time.sleep(.2)
	
	for timesrun in xrange(3):
		ser1.write(instring)
		#time.sleep(.4)
		repstring = ser1.read()
		if (repstring == '+' ) or (repstring == 'l'):
			return repstring
		'''
		repstring = ser1.readline()
		repstring = repstring[:-2]
		#print "this is the whole thing {}".format(repstring)
		#check for completeness - two hashmarks
		index1 = -1
		index2 = -1
		try:
			index1 = repstring.index('#')
			#print index1
		except ValueError:
			index1 = -2
		try:
			index2 = repstring.index('#',1)
			#print index2
		except ValueError:
			index2 = -2
		
		if (index1 == 0) and (index2 > 0):
			repstring = repstring[1:-1]
			return repstring
		'''
		

	return 'error'

def sendblind(instring, port):
	port = '/dev/ttyACM{}'.format(port)
	ser2 = serial.Serial(port, baudrate=57600, timeout=2)
	#writes without reading
	ser2.write(instring)
	#time.sleep(1)
	#ser1.write(instring)
	#ser1.flushInput()

	
def bootModule(port):
	#mod = modulemodel.Module()
	sendblind('#',port)
	bootresponse = readunreliable('b#',port)
	if bootresponse!='error':
		print 'bootresp{}'.format(bootresponse)
		return bootresponse
	else:
		print 'error\n'
	return 'None'
	
