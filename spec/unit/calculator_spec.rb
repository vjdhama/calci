require 'spec_helper'
require "calculator.rb"


describe "Calculator" do

	it "will add a number" do
		calculator = Calculator.new
		expect(calculator.add 2).to eq 2
	end
	
	it "will subtract a number" do
		calculator = Calculator.new
		expect(calculator.subtract 2).to eq -2
	end

	it "will multiply a number" do
		calculator = Calculator.new
		expect(calculator.multiply 2).to eq 0
	end

	it "will divide a number" do
		calculator = Calculator.new
		expect(calculator.divide 2).to eq 0
	end
end
