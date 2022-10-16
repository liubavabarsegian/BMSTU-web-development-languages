require_relative 'array_sorter'


arr = gets.chop.split(' ')
puts ArraySorter.sort_by_length(arr)