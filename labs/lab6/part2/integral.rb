# frozen_string_literal: true

# module Integral
module Integral
  @exact_result = (1 - Math.cos(1)) / 2

  def self.calc_rects(left, right)
    Enumerator.new do |yielder|
      loop do
        h = (right - left).to_f / @n
        @sum = 0
        @n.times do |k|
          x = left + (h * k) + (h / 2)
          @sum += h * x * Math.sin(x**2)
          k + 1
        end
        yielder << @sum
        @n += 1
      end
    end
  end

  def self.integrate(left, right, epsilon)
    return if epsilon.zero? || left >= right

    @n = 1
    @sum = 0
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
