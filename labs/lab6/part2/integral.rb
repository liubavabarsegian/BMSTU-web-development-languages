# frozen_string_literal: true

# module Integral
class Integral
  def initialize(left, right, epsilon)
    @left = left
    @right = right
    @epsilon = epsilon
    @n = 1
    @sum = 0
    @exact_result = (1 - Math.cos(1)) / 2
  end

  def sum
    @sum
  end

  def calc_rects
    @sum = 0
    @h = (@right - @left).to_f / @n
    @n.times do |k|
      x = @left + (@h * k) + (@h / 2)
      y = x * Math.sin(x**2)
      @sum += @h * y
      k + 1
    end
  end

  def integrate
    loop do
      break if (@exact_result - @sum).abs < @epsilon.to_f
      calc_rects
      @n += 1
    end
    print_sum
  end

  def print_sum
    puts "Левый предел left = #{@left}"
    puts "Правый предел right = #{@right}"
    puts "Точность epsilon = #{@epsilon}"
    puts "Точный результат: #{@exact_result}"
    puts "Полученная сумма с точностью #{@epsilon}: #{@sum}"
    puts "Число итераций (т.е. число прямоугольников n): #{@n}\n\n"
  end
end
