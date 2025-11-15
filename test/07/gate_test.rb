# frozen_string_literal: true

require_relative '../test_helper'
require_relative '../../lib/07/gate'
require_relative '../../lib/07/ticket'

class GateTest < Minitest::Test
  def setup
    @umeda = Gate.new(:umeda)
    @juso = Gate.new(:juso)
    @mikuni = Gate.new(:mikuni)
  end

  def test_gate_umeda_to_juso
    ticket = Ticket.new(160)

    @umeda.enter(ticket)
    assert @juso.exit(ticket)
  end

  def test_juso_to_mikuni
    ticket = Ticket.new(160)

    @juso.enter(ticket)
    assert @mikuni.exit(ticket)
  end

  def test_umeda_to_mikuni
    ticket = Ticket.new(190)

    @umeda.enter(ticket)
    assert @mikuni.exit(ticket)
  end

  def test_umeda_to_mikuni_not_enough_fare
    ticket = Ticket.new(160)

    @umeda.enter(ticket)
    refute @mikuni.exit(ticket)
  end

  def test_exit_without_entering
    ticket = Ticket.new(160)

    assert_raises(RuntimeError, 'Invalid station') do
      @umeda.exit(ticket)
    end
  end 
    
  def test_same_station_entry_exit
    ticket = Ticket.new(160)

    @umeda.enter(ticket)
    assert @umeda.exit(ticket)
  end
end
