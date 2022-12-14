# frozen_string_literal: true

# module Integral
module Integral
  @n = 1
  @sum = 0
  @exact_result = (1 - Math.cos(1)) / 2

  def self.sum
    @sum
  end

  def self.calc_rects(left)
    k = 1
    while k <= @n
      x = left + (@h * (k - 1)) + (@h / 2)
      y = x * Math.sin(x**2)
      @sum += @h * y
      k += 1
    end
  end

  def self.print_sum(left, right, epsilon)
    puts "Левый предел left = #{left}"
    puts "Правый предел right = #{right}"
    puts "Точность epsilon = #{epsilon}"
    puts "Точный результат: #{@exact_result}"
    puts "Полученная сумма с точностью #{epsilon}: #{@sum}"
    puts "Число итераций (т.е. число прямоугольников n): #{@n - 1}\n\n"
  end

  def self.integrate(left, right, epsilon)
    return if epsilon.zero? || left == right

    while (@exact_result - @sum).abs > epsilon.to_f
      @sum = 0
      @h = (right - left).to_f / @n
      calc_rects(left)
      @n += 1
    end
    print_sum(left, right, epsilon)
    @sum
  end
end
