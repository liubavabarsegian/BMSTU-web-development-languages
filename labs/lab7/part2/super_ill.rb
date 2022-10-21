# frozen_string_literal: true

require_relative 'ill'

# class SuperIll
class SuperIll < Ill
  attr_accessor :last_clinical_examination_year
  attr_reader :surname, :age

  def initialize(surname = '', age = 0, last_clinical_examination_year = 0)
    super(surname, age)
    @last_clinical_examination_year = last_clinical_examination_year
  end

  def next_clinical_examination
    @last_clinical_examination_year + 3
  end

  def print_info
    super
    puts "The last clinical examination year: #{@last_clinical_examination_year}"
    puts "The next clinical examination year: #{next_clinical_examination}"
  end
end
