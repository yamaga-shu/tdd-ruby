# frozen_string_literal: true

# Ticket represents Train's Ticket
# which has its fare and would have stamped station name where entered.
class Ticket
  attr_reader :fare, :stamped_at

  def initialize(fare)
    @fare = fare
  end

  def stamp(name)
    @stamped_at = name
  end
end
