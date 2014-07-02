import modulemodel, serial, time, threading
import multiprocessing


def readunreliable(instring, ser):
	for timesrun in xrange(3):
		ser.write(instring)
		repstring = ser.read()
		if (repstring == '+' ) or (repstring == 'l'):
			return repstring
		if (timesrun == 1):
			ser.write("!r#")

	return 'error'

def sendblind(instring, ser):
	ser.write(instring)
	

	
def bootModule(ser):
	sendblind("!#",ser)
	bootresponse = readunreliable('!b#',ser)
	if bootresponse!='error':
		print 'bootresp{}'.format(bootresponse)
		return bootresponse
	else:
		print 'error\n'
	return 'None'
	
