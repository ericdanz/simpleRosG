class Module:
	def __init__(self, modclass='None'):
		self.ios = []
		self.modclass = modclass

	def addio(self, io):
		self.ios.append(io)

	def setclass(self, modclass):
		self.modclass = modclass

class InOut:
	def __init__(self):
		self.isInput = ""
		self.classOf = ""
		self.typeOf = ""
		self.lowerBound = ""
		self.upperBound = ""
		self.granularity = ""
		self.state = ""
