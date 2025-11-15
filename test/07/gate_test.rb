# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/07/gate'

class GateTest < Minitest::Test
  def test_gate
    assert Gate.new
  end
end
