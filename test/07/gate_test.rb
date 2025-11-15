# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/07/gate'

class GateTest < Minitest::Test
  def test_gate_umeda_to_juso
    umeda = Gate.new(:umeda)
    juso = Gate.new(:juso)

    ticket = Ticket.new(160)

    umeda.enter(ticket)
    assert juso.exit(ticket)
  end
end
