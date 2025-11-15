# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/07/gate'
require_relative '../../lib/07/ticket'

class GateTest < Minitest::Test
  def test_gate_umeda_to_juso
    umeda = Gate.new(:umeda)
    juso = Gate.new(:juso)

    ticket = Ticket.new(160)

    umeda.enter(ticket)
    assert juso.exit(ticket)
  end

  def test_umeda_to_mikuni_not_enough_fare
    umeda = Gate.new(:umeda)
    mikuni = Gate.new(:mikuni)

    ticket = Ticket.new(160)

    umeda.enter(ticket)
    refute mikuni.exit(ticket)
  end
end
