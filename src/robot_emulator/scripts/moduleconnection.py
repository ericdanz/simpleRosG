import modulemodel, serial, time, threading
import multiprocessing


def readunreliable(instring, port):
	serialworked = 0
	#give it three chances, if there is no response then stop trying to talk to the port
	chances = 3
	print port
	port = '/dev/ttyACM{}'.format(port)
	while not(serialworked):
		ser1 = serial.Serial(port, baudrate=9600, timeout=2)
		ser1.write(instring)
		respstring = ser1.readline()
		print respstring
		if not len(respstring):
			chances = chances - 1
		else:
			serialworked = 1
		
	if not chances:
		return 'noresp'
	return respstring

def bootModule(port):
	mod = modulemodel.Module()
	bootresponse = readunreliable('b#',port)
	if bootresponse!='noresp':
		return bootresponse
	else:
		print 'error\n'
	return 'None'
	
