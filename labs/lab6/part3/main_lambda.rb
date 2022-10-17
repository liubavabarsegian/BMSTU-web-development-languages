# frozen_string_literal: true

require_relative 'integral_lambda'

func1 = ->(x) { Math.exp(x) / (x + 1) }
Integral.intprg(0, 1, 400, func1)
func2 = ->(x) { x * (x - 1) }
Integral.intprg(0, 2, 500, func2)
