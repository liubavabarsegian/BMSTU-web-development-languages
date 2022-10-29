#ЛЕНИВЫЕ ВЫЧИСЛЕНИЯ

p (1..100).select(&:even?).first(2)  #сначала выполняется селект, 
									#а потом только first.Если range до бесконечности, 
									#то программа будет вычисляться бесконечно
p (1..Float::INFINITY).lazy.map{|num| num ** num}.select{|num| num.even?}.first(4)
p (1..Float::INFINITY).lazy.map{|num| num ** num}
						.select{|num| num.even?}.take_while{|i| i < 50_000}.force

lazy_enum =  (1..Float::INFINITY).lazy.map{|num| num ** num}
						.select{|num| num.even?}.take_while{|i| i < 25_000_000}

# p lazy_enum.next
# p lazy_enum.next
# p lazy_enum.next
# p lazy_enum.next

#force - принудительное выполнение всего take_while
p lazy_enum.force.last

#РЕГУЛЯРНЫЕ ВЫРАЖЕНИЯ НА РУБИ
p 'hello world'.match?(/^hello/) #true
p 'Hello world'.match?(/^hello/i) #true
p 'h ello world'.match?(/^hello/) #false