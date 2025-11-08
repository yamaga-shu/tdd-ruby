require_relative '../test_helper'

class FizzBuzzTest < Minitest::Test
  def test_returns_number_for_1
    assert_equal '1', fizzbuzz(1)
  end
end
