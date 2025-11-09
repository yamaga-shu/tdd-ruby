# frozen_string_literal: true

require_relative '../test_helper'

class FizzBuzzTest < Minitest::Test
  EXPECTED = %w[
    FizzBuzz 1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz
    16 17 Fizz 19 Buzz Fizz 22 23 Fizz Buzz 26 Fizz 28 29 FizzBuzz
  ].freeze

  def test_fizzbuzz_integer
    cases = (0..30).map { |n| { given: n, expected: EXPECTED[n] } }
    cases.each do |h|
      assert_equal h[:expected], fizzbuzz(h[:given]), "fizzbuzz(#{h[:given]}) should be #{h[:expected]}"
    end
  end

  def test_raises_for_non_integer
    invalid_values = [nil, 'a', 1.5, [], {}, Object.new]
    invalid_values.each do |val|
      assert_raises(ArgumentError) { fizzbuzz(val) }
    end
  end
end
