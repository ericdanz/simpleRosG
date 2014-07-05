import modulemodel, serial, time, threading
import multiprocessing


def readunreliable(instring, ser):
	for timesrun in xrange(3):
		ser.write(instring)
		repstring = ser.read()
		if (repstring == '+' ) or (repstring == 'l'):
			return repstring
		#if (timesrun == 2):
		#	ser.write("!r#")

	return 'error'

def sendblind(instring, ser):
	ser.write(instring)

def sendReboot(ser):
	ser.write("!r#")

def bootModule(ser):
	sendblind("!#",ser)
	bootresponse = readunreliable('!b#',ser)
	if bootresponse!='error':
		return bootresponse

	return 'None'
