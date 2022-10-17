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
    if eol?(@worker) then
      print "\nКонец ввода.\n"
      return -1 
    end
  end

  def self.input_salary
    print "Введите зарплату за текущий месяц работника #{@worker}: "
    @salary = gets.chomp
    if eol?(@salary) then
      print "\nКонец ввода.\n" 
      return -1
    end
    if !@salary.match?(/^[\.0-9]*$/) then
      print "\nОшибка ввода.\n"
      return -1
    end
  end

  def self.input_data
    loop do
      return -1 if input_worker == -1

      return -1 if input_salary == -1

      @workers.append(@worker)
      @salary = @salary.to_f
      if @salary.to_f == @salary.to_i then
        @salary = @salary.to_i
      end
      @salaries.append(@salary.to_i)
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



  