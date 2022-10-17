# frozen_string_literal: true

require_relative 'integral'

Integral.intprg(0, 1, 400) { |x| Math.exp(x) / (x + 1) }
Integral.intprg(0, 2, 500) { |x| x * (x - 1) }
