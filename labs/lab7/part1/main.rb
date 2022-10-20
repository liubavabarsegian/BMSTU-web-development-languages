# frozen_string_literal: true

require_relative 'work_with_file'

# generate data to file
FILENAME = 'file'
MyFile.open(FILENAME)
MyFile.print_evrythring
puts MyFile.find_min_at_odd_index(FILENAME)
puts MyFile.sum_of_minmax(FILENAME)
puts MyFile.diff_between_firstlast(FILENAME)
puts MyFile.count_negatives(FILENAME)
MyFile.close
