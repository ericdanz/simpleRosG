import modulemodel, serial, time, threading
import multiprocessing


def readunreliable(instring, port):
	port = '/dev/ttyACM{}'.format(port)
	#might need to switch back to 19200, if this stacks too much on the input buffer on the arduino
	ser1 = serial.Serial(port, baudrate=57600, timeout=2)
	#ser1.write("#")
	#time.sleep(1)
	for timesrun in xrange(3):
		ser1.write(instring)
		repstring = ser1.readline()
		repstring = repstring[:-2]
		print "this is the whole thing {}".format(repstring)
		#check for completeness - two hashmarks
		index1 = -1
		index2 = -1
		try:
			index1 = repstring.index('#')
			print index1
		except ValueError:
			index1 = -2
		try:
			index2 = repstring.index('#',1)
			print index2
		except ValueError:
			index2 = -2
		
		if (index1 == 0) and (index2 > 0):
			repstring = repstring[1:-1]
			return repstring
		time.sleep(.1)

	return 'error'

	
def bootModule(port):
	mod = modulemodel.Module()
	bootresponse = readunreliable('b#',port)
	if bootresponse!='noresp':
		print 'bootresp{}'.format(bootresponse)
		return bootresponse
	else:
		print 'error\n'
	return 'None'
	
