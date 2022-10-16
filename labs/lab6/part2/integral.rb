# frozen_string_literal: true

# module Integral
module Integral
  @exact_result = (1 - Math.cos(1)) / 2

  def self.h(right, left)
    (right - left).to_f / @n
  end

  def self.y(x_value)
    x_value * Math.sin(x_value**2)
  end

  def self.sum_n(left, right)
    @n.times do |k|
      x = left + (h(right, left) * k) + (h(right, left) / 2)
      @sum += h(right, left) * y(x)
      k + 1
    end
  end

  def self.calc_rects(left, right)
    Enumerator.new do |yielder|
      loop do
        @sum = 0
        sum_n(left, right)
        yielder << @sum
        @n += 1
      end
    end
  end

  def self.integrate(left, right, epsilon)
    return if epsilon.zero? || left >= right

    @n = 1
    calc_rects(left, right).take_while { |sum| (@exact_result - sum).abs > epsilon }
    print_sum(left, right, epsilon)
    @sum
  end

  def self.print_sum(left, right, epsilon)
    puts "Левый предел left = #{left}"
    puts "Правый предел right = #{right}"
    puts "Точность epsilon = #{epsilon}"
    puts "Точный результат: #{@exact_result}"
    puts "Полученная сумма с точностью #{epsilon}: #{@sum}"
    puts "Число итераций (т.е. число прямоугольников n): #{@n}\n\n"
  end
end
