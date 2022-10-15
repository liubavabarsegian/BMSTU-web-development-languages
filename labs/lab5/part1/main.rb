# frozen_string_literal: true

require_relative 'calc'

# module Main
module Main
  include Calculate

  def self.main
    print 'Введите x: '
    input = gets.chop
    puts 'Результат вычислений: ' unless Calculate.calc(input).is_a?(String)
    puts Calculate.calc(input)
  end
end

Main.main
