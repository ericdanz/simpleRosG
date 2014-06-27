class GateKeeperModel:
	def __init__(self):
		self.modules = []
		self.id = 0
	def addmodule(self,module):
		#check for older models at this Gate Number
		replaced = False		
		for m in self.modules:
			if m.number == module.number:
				#replace the older model
				m.settype(module.mtype)
				replaced = True
		if not replaced:
			self.modules.append(module)
	
	def __str__(self):
		tempstring = 'Modules: '
		for mod in self.modules:
			tempstring = tempstring + 'Module ' + str(mod.number) + ' ' + mod.mtype + ', '
		return tempstring

class Module:
	def __init__(self,mtype='None', number=1):
		self.mtype = mtype
		self.number = number

	def settype(self,mtype):
		self.mtype = mtype

	def setnum(self,number):
		self.number = number
