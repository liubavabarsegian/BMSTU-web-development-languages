# frozen_string_literal: true

# module Strings
module Strings
  @strings = []

  def self.eol?(string)
    string == ''
  end

  def self.input_strings
    print "\nВведите Enter для остановки ввода.\n\n"
    puts 'Введите последовательность строк, состоящих разделенных пробелами строк'
    loop do
      string = gets.chomp
      break if eol?(string)

      @strings.append(string)
    end
  end

  def self.print_strings
    puts @strings
  end

  def self.correct_strings
    @strings.each do |str|
      str.gsub!(/^[Нн]/, 'т')
      str.gsub!(/ [Нн]/, ' т')
      str.gsub!(/[оО]$/, 'е')
      str.gsub!(/[оО] /, 'е ')
    end
  end
end
