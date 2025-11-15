# frozen_string_literal: true

# Gate represents a Station's Gate
# which checks if it is possible to go through with a Ticket.
class Gate
  STATIONS = %i[umeda juso mikuni].freeze
  FARES = [160, 190].freeze

  def initialize(name)
    @name = name
  end

  def enter(ticket)
    ticket.stamp(@name)
  end

  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end

  private

  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@name)

    raise 'Invalid station' if from.nil? || to.nil?

    distance = (to - from).abs
    return 0 if distance.zero?

    FARES[distance - 1]
  end
end
