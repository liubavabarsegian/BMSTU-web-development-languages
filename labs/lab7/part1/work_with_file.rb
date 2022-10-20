# frozen_string_literal: true

# module MyFile
module MyFile
  @numbers = []
  def self.open(filename)
    @f = File.open(filename)
    split_to_numbers(filename)
  end

  def self.close
    @f.close
  end

  def self.split_to_numbers(_filename)
    @numbers = @f.read.split.map! { |x| x.to_f if x.match?(/^-?[0-9]\d*(\.\d+)?$/) }.compact
  end

  def self.print_evrythring
    puts 'File numbers: '
    print @numbers
    puts "\n"
  end

  def self.find_min_at_odd_index(_filename)
    puts 'Minimum value with an odd index: '
    res = @numbers.each_index.collect { |i| @numbers[i] if i.odd? }.compact
    res.min
  end

  def self.sum_of_minmax(_filename)
    puts 'Sum of minimum and maximum values: '
    (@numbers.max.to_f + @numbers.min.to_f)
  end

  def self.diff_between_firstlast(_filename)
    puts 'Difference between first and last values:'
    (@numbers.first.to_f - @numbers.last.to_f)
  end

  def self.count_negatives(_filename)
    return if @numbers.map!(&:negative?).count(true) <= 10

    puts 'The number of negative values is grater than 10'
  end
end
