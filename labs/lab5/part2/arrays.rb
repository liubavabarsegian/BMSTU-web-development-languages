# frozen_string_literal: true

# module Arrays
module Arrays
  @two_richest = []

  attr_reader :workers
  attr_writer :salaries

  def self.find_av_salary(workers, salaries)
    return if salaries.size.zero?

    (salaries.sum.to_f / salaries.size).round(3)
  end

  def self.find_richest(workers, salaries)
    return if salaries.size != workers.size || workers.size.zero? || salaries.size.zero?

    @two_richest.append(workers[salaries.index(salaries.max(2)[0]).to_i])
    @two_richest.append(workers[salaries.index(salaries.max(2)[1]).to_i])
  end

  def self.find_min_deviation(workers, salaries)
    return if salaries.size != workers.size || workers.size.zero? || salaries.size.zero?

    workers[salaries.index(salaries.min_by { |x| (find_av_salary(workers, salaries) - x).abs })]
  end

  def self.print_info(workers, salaries)
    puts "Информация о всех работниках:\n"
    workers.each_index do |i|
      puts "#{i + 1}: #{workers[i]} #{salaries[i]}"
    end
  end

  def self.print_av(workers, salaries)
    puts "Средняя зарплата всех работников за текущий месяц: #{find_av_salary(workers, salaries)}"
  end

  def self.print_richest(workers, salaries)
    puts "Работники с наибольшей зарплатой: #{find_richest(workers, salaries)[0]} и #{find_richest(workers, salaries)[1]}"
  end

  def self.print_min_dev(workers, salaries)
    puts "Работник, зарплата которого наименее отклоняется от средней зарплаты всех работников: #{find_min_deviation(workers, salaries)}"
  end

  def self.fire_loser(workers, salaries)
    puts 'Поиск и увольнение работника с минимальной зарплатой.'
    workers.delete_at(salaries.index(salaries.min))
    salaries.delete_at(salaries.index(salaries.min))
  end
end
