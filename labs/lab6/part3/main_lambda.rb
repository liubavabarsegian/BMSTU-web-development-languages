# frozen_string_literal: true

require_relative 'integral_lambda'

func1 = ->(x) { Math.exp(x) / (x + 1) }
Integral.intprg(0, 1, 10_000, func1)
func2 = ->(x) { x * (x - 1) }
Integral.intprg(0, 2, 10_000, func2)
