# frozen_string_literal: false

require_relative 'strings'

# module IOcontroller
module IOcontroller
  include Strings
  def self.eol?(string)
    string == ''
  end

  def self.input_strings
    strings = []
    print "\nВведите Enter для остановки ввода.\n\n"
    puts 'Введите последовательность строк, состоящих разделенных пробелами строк'
    loop do
      string = gets.chomp
      break if eol?(string)

      strings.append(string)
    end
    strings
  end

  def self.main
    strings = input_strings
    print "Строки до исправления:\n"
    Strings.print_strings(strings)
    Strings.correct_strings(strings)
    print "\nСтроки после исправления:\n"
    Strings.print_strings(strings)
  end
end

IOcontroller.main
