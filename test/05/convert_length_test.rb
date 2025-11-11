# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/05/convert_length'

class ConvertLengthTest < Minitest::Test
  def test_m_to_in
    assert_equal 39.37, convert_length(1, 'm', 'in')
  end
end
