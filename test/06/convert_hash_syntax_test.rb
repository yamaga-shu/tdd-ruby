# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/06/convert_hash_syntax'

class ConvertHashTest < Minitest::Test
  def test_convert_hash_syntax
    assert_equal '{}', convert_hash_syntax('{}')
  end
end
