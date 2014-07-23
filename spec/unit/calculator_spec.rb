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

	it "will make result zero on cancel" do
		calculator = Calculator.new
		calculator.cancel
		expect(calculator.result).to eq 0
	end
end

describe "CommandProcessor" do
  it "will exit on input exit" do
    cmd = CommandProcessor.new
    cmd.stub(:getInput).and_return("add 3\n")
    cmd.parser
    expect(cmd.calculator.result).to eq 3
  end
end

