class Solver
  def factorial(number)
    raise Exception('Number must be 0 or positive') if number.negative?
    return 1 if number <= 1

    factorial(number - 1) * number
  end

  def reverse(word)
    word.reverse
  end
end
