require 'rspec/autorun'

class Calculator
  def initialize(number)
    @number = number
  end

  def reduction
  	outcome = reduce(@number)
  	
  	until outcome.to_s.size.eql?(1)
  	  outcome = reduce(outcome)
  	end

  	outcome
  end

  private

  def reduce(num)
  	num.to_s.split("").inject(0) { |sum, num| sum += num.to_i }
  end
end

describe Calculator do
  it "Calculate" do
  	calculator = Calculator.new(16)
  	expect(calculator.reduction).to eql(7)
  end
end

calculator = Calculator.new(16)
puts calculator.reduction