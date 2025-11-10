# frozen_string_literal: true

def to_hex(r, g, b)
  hex_r = r.to_s(16).rjust(2, '0')
  hex_g = g.to_s(16).rjust(2, '0')
  hex_b = b.to_s(16).rjust(2, '0')

  "##{hex_r}#{hex_g}#{hex_b}"
end
