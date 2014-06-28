import modulemodel, serial, time, threading
import multiprocessing


def readunreliable(instring, port):
	port = '/dev/ttyACM{}'.format(port)
	ser1 = serial.Serial(port, baudrate=9600, timeout=2)
	ser1.write("#")
	time.sleep(2)
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

	else:
		return 'error'

	'''serialworked = 0
	#give it three chances, if there is no response then stop trying to talk to the port
	chances = 3
	
	print 'input string: {}'.format(instring)
	repstring = ''
	port = '/dev/ttyACM{}'.format(port)
	print port
	while not(serialworked):
		ser1 = serial.Serial(port, baudrate=9600, timeout=1)
		ser1.write(instring)
		ser1.write(instring)
		respstring = ser1.read(1)
		while (repstring != '#'):
			repstring = ser1.read(1)
		print 'got inside it now'
		repstring = ser1.readline()
		print repstring
		#if len(repstring) and repstring[0] != '#':
		#	repstring = ser1.readline()
		#	ser1.write(instring)
		print 'this is what came back {}  x'.format(repstring)
		#check for completeness - two hashmarks
		index1 = -1
		index2 = -1
		try:
			index1 = repstring.index('#')
		except ValueError:
			index1 = -2
		try:
			index2 = repstring.index('#',1)
		except ValueError:
			index2 = -2

		
		if (index1 > 0) and (index2 > 0):
			serialworked = 1
		else:
			chances = chances - 1			
		
		if not chances:
			return 'noresp'
	print repstring
	return respstring
'''
def bootModule(port):
	mod = modulemodel.Module()
	bootresponse = readunreliable('b#',port)
	if bootresponse!='noresp':
		print 'bootresp{}'.format(bootresponse)
		return bootresponse
	else:
		print 'error\n'
	return 'None'
	
