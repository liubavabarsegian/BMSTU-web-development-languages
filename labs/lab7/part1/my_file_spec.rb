# frozen_string_literal: true

require_relative 'my_file'

def generate
  File.new('tester_file', 'w+')
  open('tester_file', 'a') do |f|
    rand(1...100).times do
      f << rand(-100...100) << ' '
    end
  end
end

generate

RSpec.describe MyFile do
  describe '#find_min_at_odd_index' do
    context 'when the file exits and is not empty' do
      it 'returns the minimum value at odd index' do
        generate
        MyFile.start('tester_file')
        @nums = MyFile.split_to_numbers('tester_file')
        min = @nums.select.with_index { |_el, i| i.odd? }.min
        expect(MyFile.find_min_at_odd_index('tester_file')).to eq min
        MyFile.delete('./tester_file') if MyFile.exist?('tester_file')
      end
    end
  end
end

RSpec.describe MyFile do
  describe '#sum_of_minmax' do
    context 'when the file exits and is not empty' do
      it 'returns the sum of the minimum and maximum values' do
        generate
        MyFile.start('tester_file')
        @nums = MyFile.split_to_numbers('tester_file')
        expect(MyFile.sum_of_minmax('tester_file')).to eq(@nums.max + @nums.min)
        MyFile.delete('./tester_file') if MyFile.exist?('tester_file')
      end
    end
  end
end

RSpec.describe MyFile do
  describe '#diff_between_firstlast' do
    context 'when the file exits and is not empty' do
      it 'returns the difference between first and the last number' do
        generate
        MyFile.start('tester_file')
        @nums = MyFile.split_to_numbers('tester_file')
        expect(MyFile.diff_between_firstlast('tester_file')).to eq(@nums.first - @nums.last)
        MyFile.delete('./tester_file') if MyFile.exist?('tester_file')
      end
    end
  end
end

RSpec.describe MyFile do
  describe '#count_negatives' do
    context 'when the file exits and is not empty' do
      it 'prints if the number of negative values is greater than 10. If it is less ot equal, it returns false' do
        generate
        MyFile.start('tester_file')
        @nums = MyFile.split_to_numbers('tester_file')
        expect(MyFile.count_negatives('tester_file')).to be true if @nums.count(&:negative?) > 10
        expect(MyFile.count_negatives('tester_file')).to be false if @nums.count(&:negative?) <= 10
        MyFile.delete('./tester_file') if MyFile.exist?('tester_file')
      end
    end
  end
end
