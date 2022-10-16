# frozen_string_literal: true

require_relative 'arrays'
# module Main
module Main
  include Arrays

  @workers = []
  @salaries = []

  def self.eol?(input)
    input == ''
  end

  def self.input_worker
    print "\nДля остановки ввода нажмите Enter\n\nВведите фамилию работника: "
    @worker = gets.chomp
    return -1 if eol?(@worker) { print "\nКонец ввода.\n" }
  end

  def self.input_salary
    print "Введите зарплату за текущий месяц работника #{@worker}: "
    @salary = gets.chomp
    return -1 if eol?(@salary) { print "\nКонец ввода.\n" }
  end

  def self.input_data
    loop do
      return -1 if input_worker == -1

      return -1 if input_salary == -1

      @workers.append(@worker);
      @salaries.append(@salary.to_i);
    end
  end

  def self.main
    return if input_data == -1 && @workers.size.zero?

    Arrays.print_info(@workers, @salaries)
    Arrays.print_av(@workers, @salaries)
    Arrays.print_richest(@workers, @salaries)
    Arrays.print_min_dev(@workers, @salaries)
    Arrays.fire_loser(@workers, @salaries)
    Arrays.print_info(@workers, @salaries)
  end
end

Main.main
