class Module:
	def __init__(self, mtype='None'):
		self.ios = []
		self.mtype = mtype

	def addio(self, io):
		self.ios.append(io)

	def settype(self, mtype):
		self.mtype = mtype

class InOut:
	def __init__(self):
		self.isInput = ""
		self.classOf = ""
		self.typeOf = ""
		self.lowerBound = ""
		self.upperBound = ""
		self.granularity = ""
		self.state = ""
