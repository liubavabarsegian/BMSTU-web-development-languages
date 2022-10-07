# frozen_string_literal: true

# module Calculate
module Calculate
  def self.calc(input)
    Math.sin(input) / (input**3 - 5) + (input**2) - 2 * Math.exp(input)
  end
end
