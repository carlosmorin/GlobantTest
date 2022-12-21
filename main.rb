class Calculator
  def initialize(number)
  	@number = number
  end

  def reduction
  	@number
  end
end

calculator = Calculator.new(132)
puts calculator.reduction