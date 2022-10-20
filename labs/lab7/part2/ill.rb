# frozen_string_literal: true

class Ill
    def initialize(surname, age)
        @surname = surname
        @age = age
    end

    def print_info
        puts "Surname: #{@surname}\n"
        puts "Age: #{@age}\n"
    end
end