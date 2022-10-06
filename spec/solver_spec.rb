require_relative '../solver'

describe Solver do
  number1 = 5
  number2 = 0
  number3 = -1
  word1 = 'hello'
  word2 = 'bye'

  number4 = 6
  number5 = 25
  number6 = 15
  number7 = 8

  context 'Test the factorial method in Solver class' do
    it 'should return the factorial of 5' do
      expect(Solver.factorial(number1)).to eq(120)
    end

    it 'should return the factorial of 1' do
      expect(Solver.factorial(number2)).to eq(1)
    end

    it 'should return the factorial of -1' do
      expect { Solver.factorial(number3) }.to raise_error(NegativeNumberError, 'Number is less than 0')
    end
  end

  context 'Test the reverse string method in Solver class' do
    it 'should return the reversed hello' do
      expect(Solver.reversed(word1)).to eq('olleh')
    end

    it 'should return the reversed bye' do
      expect(Solver.reversed(word2)).to eq('eyb')
    end
  end

  context 'Test the fizzbuzz method in Solver class' do
    it 'should return fizz' do
      expect(Solver.fizzbuzz(number4)).to eq('fizz')
    end

    it 'should return buzz' do
      expect(Solver.fizzbuzz(number5)).to eq('buzz')
    end

    it 'should return fizzbuzz' do
      expect(Solver.fizzbuzz(number6)).to eq('fizzbuzz')
    end

    it 'should return buzz' do
      expect(Solver.fizzbuzz(number7)).to eq('8')
    end
  end
end
