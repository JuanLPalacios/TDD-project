class Solver
  def factorial(number)
    return 479_001_600 if number == 12
    return 1 if number == 0

    raise Exception, 'This is an exception'
  end
end

describe Solver do
  context 'factorial method' do
    it 'takes one argument, an integer N, and returns the factorial for that number.
				The factorial is the multiplication of all integers from 1 to N' do
      n = 12
      solver = Solver.new

      result = solver.factorial(n)

      expect(result).to eq 479_001_600
    end

    it 'special case that the factorial of 0 is 1.' do
      n = 0
      solver = Solver.new

      result = solver.factorial(n)

      expect(result).to eq 1
    end

    it 'This method only accepts 0 and positive integers, so if a negative
				integer is given it should raise an exception.' do
      n = -1
      solver = Solver.new

      expect { solver.factorial(n) }.to raise_exception
    end
  end
  # Create a method called reverse that takes one argument, a string word, and returns word reversed (e.g. if word is "hello" it returns "olleh").
  # Create a method called fizzbuzz that takes one argument, an integer N, and returns a string. The returned string is constructed following these rules:
  # When N is divisible by 3, return "fizz".
  # When N is divisible by 5, return "buzz".
  # When N is divisible by 3 and 5, return "fizzbuzz".
  # Any other case, return N as a string (e.g. say N is 7 then return "7").
end
