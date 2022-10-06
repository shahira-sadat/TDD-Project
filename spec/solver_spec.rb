require_relative '../solver'

describe Solver do
  solve = Solver.new
  number1 = 5
  number2 = 0
  number3 = -1
  word1 = 'hello'
  word2 = 'bye'

  context 'Test the factorial method in Solver class' do
    it 'should return the factorial of 5' do
      expect(solve.factorial(number1)).to eq(120)
    end

    it 'should return the factorial of 1' do
      expect(solve.factorial(number2)).to eq(1)
    end

    it 'should return the factorial of -1' do
      expect { solve.factorial(number3) }.to raise_error(NegativeNumberError, 'Number is less than 0')
    end
  end

  context 'Test the reverse string method in Solver class' do
    it 'should return the reversed hello' do
      expect(solve.reversed(word1)).to eq('olleh')
    end

    it 'should return the reversed bye' do
      expect(solve.reversed(word2)).to eq('eyb')
    end
  end
end
