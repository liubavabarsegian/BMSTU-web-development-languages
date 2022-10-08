# frozen_string_literal: true

require_relative 'strings'

# module Main
module Main
  include Strings

  def self.main
    Strings.input_strings
    print "Строки до исправления:\n"
    Strings.print_strings
    Strings.correct_strings
    print "\nСтроки после исправления:\n"
    Strings.print_strings
  end
end

Main.main
