require_relative '../solver'

describe Solver do
  solve = Solver.new
  number1 = 5
  number2 = 0
  number3 = -1

context 'Test the factorial method in Solver class' do
  it 'should return the factorial of given number' do
    expect(solve.factorial(number1)).to eq (120)
  end

  it 'should return the factorial of given number' do
    expect(solve.factorial(number2)).to eq (1)
  end

  it 'should return the factorial of given number' do
    expect{solve.factorial(number3)}.to raise_error(NegativeNumberError, 'Number is less than 0')
  end
end



