# frozen_string_literal: true

# module Calculate
module Calculate
  def self.calc(input)
    # here
    return 'InputError: expected a numeric input' if input == '' || !input.match?(/^-?[0-9]\d*(\.\d+)?$/)

    @input = input.to_f
    (Math.sin(@input) / (@input**3 - 5) + (@input**2) - 2 * Math.exp(@input)).round(2)
  end
end
