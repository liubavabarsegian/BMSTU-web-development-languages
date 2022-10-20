# frozen_string_literal: true

require_relative 'ill'
require_relative 'super_ill'

ill_person = Ill.new("Smith", 40)
ill_person.print_info

super_ill_person = SuperIll.new("John", 39, 2021)
puts super_ill_person.next_clinical_examination
super_ill_person.print_info