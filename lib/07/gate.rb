# frozen_string_literal: true

class Gate
  #: (String) -> void
  def initialize(name)
    @name = name
  end

  def enter(ticket)
  end

  def exit(ticket)
    true
  end
end
