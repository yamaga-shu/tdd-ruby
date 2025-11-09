# frozen_string_literal: true

def fizzbuzz(num)
  raise ArgumentError unless num.is_a?(Integer)

  return 'FizzBuzz' if (num % 15).zero?
  return 'Fizz' if (num % 3).zero?
  return 'Buzz' if (num % 5).zero?

  num.to_s
end
