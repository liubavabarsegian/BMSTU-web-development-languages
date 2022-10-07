# frozen_string_literal: true

# module Arrays
module Arrays
  @workers = []
  @salaries = []
  @two_richest = []

  attr_reader :workers
  attr_writer :salaries

  def self.workers
    @workers
  end

  def self.add_to_arrays(worker, salary)
    @workers.append(worker)
    @salaries.append(salary)
  end

  def self.find_av_salary
    return if @salaries.size.zero?

    (@salaries.sum.to_f / @salaries.size).round(3)
  end

  def self.find_richest
    @two_richest.append(@workers[@salaries.index(@salaries.max(2)[0])])
    @two_richest.append(@workers[@salaries.index(@salaries.max(2)[1])])
  end

  def self.find_min_deviation
    @workers[@salaries.index(@salaries.min_by { |x| (find_av_salary - x).abs })]
  end

  def self.print_info
    puts "Информация о всех работниках:\n"
    @workers.each_index do |i|
      puts "#{i + 1}: #{@workers[i]} #{@salaries[i]}"
    end
  end

  def self.print_av
    puts "Средняя зарплата всех работников за текущий месяц: #{find_av_salary}"
  end

  def self.print_richest
    puts "Работники с наибольшей зарплатой: #{find_richest[0]} и #{find_richest[1]}"
  end

  def self.print_min_dev
    puts "Работник, зарплата которого наименее отклоняется от средней зарплаты всех работников: #{find_min_deviation}"
  end

  def self.fire_loser
    puts 'Поиск и увольнение работника с минимальной зарплатой.'
    @workers.delete_at(@salaries.index(@salaries.min))
    @salaries.delete_at(@salaries.index(@salaries.min))
  end
end
