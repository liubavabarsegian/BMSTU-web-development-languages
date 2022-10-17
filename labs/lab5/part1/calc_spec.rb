# frozen_string_literal: true

require_relative 'calc'
require 'faker'

RSpec.describe Calculate do
  include Calculate
  include Faker
  describe '#calc' do
    context 'when parameter is empty' do
      it 'raises an error' do
        expect(Calculate.calc('')).to eq('InputError: expected a numeric input')
      end
    end

    context 'when parameter is a valid string' do
      it 'contains not numeric characters' do
        test_strings = ['3e', 'qwe', '12qwe', '3!3', '-3e', '-', ' ', '']
        test_strings.each do |test_string|
          expect(Calculate.calc(test_string)).to eq('InputError: expected a numeric input')
        end
      end

      it 'is numeric' do
        nums = [-3, 0, 10, 13]
        answers = [8.90, -2, -43_952.93, -884_657.78]
        nums.each_index { |i| expect(Calculate.calc(nums[i].to_s)).to eq(answers[i]) }
      end
    end
  end
end
