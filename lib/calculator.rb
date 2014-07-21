class Calculator
	
	attr_accessor :result
	
	def initialize
		@result = 0
	end

	def add(param)
		@result += param
	end

	def subtract(param)
		@result -= param
	end

	def multiply(param)
		@result *= param
	end

	def divide(param)
		@result /= param
	end

	def cancel
		@result = 0
	end
end

class CommandProcessor
	
end

cmd = CommandProcessor.new
