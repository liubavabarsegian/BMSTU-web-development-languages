# frozen_string_literal: true

require_relative 'calc'

# module Main
module Main
  include Calculate

  def self.main
    print 'Введите x: '
    input = gets.to_i
    print 'Результат вычислений: '
    puts Calculate.calc(input)
  end
end

Main.main
