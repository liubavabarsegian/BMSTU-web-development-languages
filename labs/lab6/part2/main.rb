# frozen_string_literal: true

require_relative 'integral'

integral = Integral.new(0, 1, 10**-4)
integral.integrate
integral = Integral.new(0, 1, 10**-5)
integral.integrate
