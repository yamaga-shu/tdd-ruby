# frozen_string_literal: true

def to_hex(r, g, b)
  [r, g, b].sum('#') do |n|
    n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  hex.scan(/\h{2}/).map do |h|
    raise TypeError, "Expected String, got #{h.class}" unless h.is_a?(String)

    h.to_i(16)
  end
end
