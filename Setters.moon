inspect = require 'inspect'
string  = require 'string'

class Dog
	methodName: () =>

	setMethodName: (value) =>

	__newindex: (index, value) =>
		methodName = 'set' .. index\gsub("^%l", string.upper)

		if self[methodName] ~= nil
			self[methodName](self, value)
		else
			rawset(self, index, value)

dog = Dog()
dog.methodName = 'big'
