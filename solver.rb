class Solver
  def factorial(number)
    raise Exception('Number must be 0 or bositive') if number.negative?
    return 1 if number <= 1

    factorial(number - 1) * number
  end
end
