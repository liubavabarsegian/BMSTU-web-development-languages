# frozen_string_literal: true

require_relative 'my_file'

# module Main
module Main
  def self.generate
    File.new('generated_file', 'w+')
    open('generated_file', 'a') do |f|
      rand(1...100).times do
        f << rand(-100...100) << ' '
      end
    end
    @filename = 'generated_file'
  end

  def self.call
    puts 'Input file name. Or click Enter for generating a new file'
    @filename = gets.chomp

    generate if @filename == ''

    return unless MyFile.exist?(@filename)

    return if MyFile.check_if_empty?(@filename)

    puts MyFile.print_everything(@filename)
    puts MyFile.find_min_at_odd_index(@filename)
    puts MyFile.sum_of_minmax(@filename)
    puts MyFile.diff_between_firstlast(@filename)
    puts MyFile.count_negatives(@filename)
  end
end

Main.call
