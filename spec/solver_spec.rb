require './solver'

describe Solver do
  context 'factorial method' do
    it 'takes one argument, an integer N, and returns the factorial for that number. '+
			 'The factorial is the multiplication of all integers from 1 to N' do
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

    it 'This method only accepts 0 and positive integers, so if a negative '+
			 'integer is given it should raise an exception.' do
      n = -1
      solver = Solver.new

      expect { solver.factorial(n) }.to raise_exception
    end
  end

  context 'reverse method' do
    it 'takes one argument, a string word, and returns word reversed' do
      word = 'hello'
      solver = Solver.new

      result = solver.reverse(word)

      expect(result).to eq 'olleh'
    end
  end

  context 'fizzbuzz method' do
    it 'takes one argument, an integer is divisible by 3, and returns string fizz' do
      number = 6
      solver = Solver.new

      result = solver.fizzbuzz(number)

      expect(result).to eq 'fizz'
    end

    it 'takes one argument, an integer is divisible by 5, and returns string buzz' do
      number = 10
      solver = Solver.new

      result = solver.fizzbuzz(number)

      expect(result).to eq 'buzz'
    end

    it 'takes one argument, an integer is divisible by 3 and 5, and returns string fizzbuzz' do
      number = 15
      solver = Solver.new

      result = solver.fizzbuzz(number)

      expect(result).to eq 'fizzbuzz'
    end

    it 'takes one argument, an integer is not divisible by 3 or 5, and returns number as string' do
      number = 13
      solver = Solver.new

      result = solver.fizzbuzz(number)

      expect(result).to eq '13'
    end
  end
end
