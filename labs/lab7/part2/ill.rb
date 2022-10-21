# frozen_string_literal: true

# class Ill
class Ill
  def initialize(surname = '', age = 0)
    @surname = surname
    @age = age
  end

  def print_info
    puts "Surname: #{@surname}\n"
    puts "Age: #{@age}\n"
  end
end
