class Calculator
	
	attr_accessor :result
	
	def initialize
		@result = 0.0
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
		@result = 0.0
	end
end

class CommandProcessor
	attr_accessor :input
	attr_accessor :operation
	attr_accessor :calculator

	def getInput
		gets.to_s.chomp
	end
	
	def parser
		calculator = Calculator.new
		while true
			input = getInput
			operation = input.split(' ')[0]
			param = input.split(' ')[1]
			if operation.eql? 'exit'
				exit
			elsif operation.eql? 'add'
				calculator.add(param.to_f)
				puts calculator.result
			elsif operation.eql? 'subtract'
				calculator.subtract(param.to_f)
				puts calculator.result
			elsif operation.eql? 'multiply'
				calculator.multiply(param.to_f)
				puts calculator.result
			elsif operation.eql? 'divide'
				calculator.divide(param.to_f)
				puts calculator.result
			elsif operation.eql? 'cancel'
				calculator.cancel
				puts calculator.result
			else
				puts "invalid op"
			end
		end
	end
end

command = CommandProcessor.new
command.parser