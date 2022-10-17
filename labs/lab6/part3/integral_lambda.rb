# frozen_string_literal: true

# module Integral
module Integral
  def self.calc_rects(lambda)
    @sum = 0
    @n.times do |k|
      delta_x = (@right - @left).to_f / @n
      x = @left + (delta_x * k) + (delta_x / 2)
      y = lambda.call(x)
      @sum += delta_x * y
      k + 1
    end
    @sum
  end

  def self.intprg(left, right, rects_num, lambda)
    return if rects_num.zero? || left >= right

    @n = rects_num
    @left = left
    @right = right

    calc_rects(lambda)
    print_sum
    @sum
  end

  def self.print_sum
    puts "Левый предел left = #{@left}"
    puts "Правый предел right = #{@right}"
    puts "Число итераций (т.е. число прямоугольников n): #{@n}"
    puts "Полученная сумма: #{@sum}\n\n"
  end
end
