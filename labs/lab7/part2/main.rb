# frozen_string_literal: true

require_relative 'ill'
require_relative 'super_ill'

puts 'Протестируем класс-родитель.'
puts 'Инициализируем класс и вызываем метод вывода информации.'
ill_person = Ill.new('Smith', 40)
ill_person.print_info

puts "\nПротестируем класс-потомок."
puts 'Инициализируем класс и вызываем метод вывода информации.'
super_ill_person = SuperIll.new('John', 39, 2021)
puts 'Вызываем метод, определяющий год следующей диспансеризации (метод не ничего выводит, только возвращает).'
super_ill_person.next_clinical_examination
puts 'Вызовем метод вывпода информации.'
super_ill_person.print_info
