# frozen_string_literal: true

# module MyFile
module MyFile
  @numbers = []

  def self.start(filename)
    split_to_numbers(filename)
    @f.close unless @f.closed?
  end

  def self.exist?(filename)
    unless File.exist?(filename)
      puts 'File not found'
      return false
    end
    true
  end

  def self.close
    @f.close
  end

  def self.delete(filename)
    File.delete(filename)
  end

  def self.check_if_empty?(filename)
    start(filename)
    puts 'The file is empty' if @numbers.empty?
    @numbers.empty?
  end

  def self.split_to_numbers(filename)
    @f = File.open(filename)
    @numbers = @f.read.split.map! { |x| x.to_f if x.match?(/^-?[0-9]\d*(\.\d+)?$/) }.compact
  end

  def self.print_everything(filename)
    start(filename)
    puts 'File numbers: '
    print @numbers
  end

  def self.find_min_at_odd_index(filename)
    start(filename)
    puts 'Minimum value with an odd index: '
    @numbers.each_index.collect { |i| @numbers[i] if i.odd? }.compact.min
  end

  def self.sum_of_minmax(filename)
    start(filename)
    puts 'Sum of minimum and maximum values: '
    (@numbers.max.to_f + @numbers.min.to_f)
  end

  def self.diff_between_firstlast(filename)
    start(filename)
    puts 'Difference between first and last values:'
    (@numbers.first.to_f - @numbers.last.to_f)
  end

  def self.count_negatives(filename)
    start(filename)
    return false if @numbers.map!(&:negative?).count(true) <= 10

    puts 'The number of negative values is grater than 10'
    true
  end
end
