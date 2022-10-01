arr = ['aasda', 'cccsdfc', 'sdslekjhkhjkss', 'pjkjkjkjkopop']

puts "Find max by length"
puts arr.max_by { |x| x.length}

puts "\nSort by length"
puts arr.sort_by {|x| x .length}

puts "\nSort by length (reversed)"
puts arr.sort_by {|x| x .length}.reverse

puts "\n Join"
puts arr.sort_by {|x| x .length}.reverse.join

puts "\nMap"
arr = [1, 2, 3]
puts arr.map{|x| x ** x}
puts arr
puts "\nMap!"
puts arr.map!{|x| x ** x}
puts arr