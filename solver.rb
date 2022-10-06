require_relative './negative_error'
class Solver
    def self.factorial(n)
        n < 0 ? (raise NegativeNumberError, 'Number is less than 0') : (1..n).reduce(1, :*)
    end
end


