# frozen_string_literal: true

# Gate represents a Station's Gate
# which checks if it is possible to go through with a Ticket.
class Gate
  def initialize(name)
    @name = name
  end

  def enter(ticket)
  end

  def exit(ticket)
    true
  end
end
