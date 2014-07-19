class Calculator

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
end
