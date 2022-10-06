require_relative './negative_error'
class Solver
  def self.factorial(num)
    num.negative? ? (raise NegativeNumberError, 'Number is less than 0') : (1..num).reduce(1, :*)
  end

  def self.reversed(word)
    word.reverse
  end

  def self.fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
