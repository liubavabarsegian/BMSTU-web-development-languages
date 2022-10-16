# frozen_string_literal: true

# module Strings
module Strings
  def self.print_strings(strings)
    puts strings
  end

  def self.correct_strings(strings)
    return if strings.empty?

    strings.each do |str|
      str.gsub!(/^[Нн]/, 'т')
      str.gsub!(/ [Нн]/, ' т')
      str.gsub!(/[оО]$/, 'е')
      str.gsub!(/[оО] /, 'е ')
    end
  end
end
