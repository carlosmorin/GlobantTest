require 'rspec/autorun'

class Calculator
  def reduction(number)
  	outcome = add_digits(number)
  	
  	until outcome.to_s.size.eql?(1)
  	  outcome = add_digits(outcome)
  	end

  	outcome
  end

  private

  def add_digits(num)
  	num.to_s.split("").inject(0) { |sum, num| sum += num.to_i }
  end
end

describe Calculator do
  it "Calculate with sort number" do
    calculator = Calculator.new
    expect(calculator.reduction(36)).to eql(9)
  end

  it "Calculate with mid number" do
    calculator = Calculator.new
    expect(calculator.reduction(15)).to eql(6)
  end

  it "Calculate with long number" do
    calculator = Calculator.new
    expect(calculator.reduction(205989897)).to eql(3)
  end
end
