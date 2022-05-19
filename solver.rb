class Solver
  def factorial(number)
    raise Exception('Number must be 0 or positive') if number.negative?
    return 1 if number <= 1

    factorial(number - 1) * number
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(number)
    return 'fizzbuzz' if (number % 3).zero? && (number % 5).zero?
    return 'fizz' if (number % 3).zero?
    return 'buzz' if (number % 5).zero?
    return number.to_s if number % 3 != 0 || number % 5 != 0
  end
end
