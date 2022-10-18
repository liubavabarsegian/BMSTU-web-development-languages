# frozen_string_literal: false

require_relative 'strings'
require 'faker'

RSpec.describe Strings do
  include Strings
  include Faker
  Faker::Config.locale = :ru
  describe '#correct_strings' do
    context 'when the string is valid' do
      it 'corrects the string' do
        strings = ['Наша Таня громко плачет', 'Уронила в речку мячик']
        expect(Strings.correct_strings(strings)).to eq(['таша Таня громке плачет', 'Уронила в речку мячик'])
      end
    end
    context 'when the string is valid / authomatic' do
      it 'corrects the string' do
        first = Faker::Name.first_name
        second = Faker::Name.first_name
        input = Array[first, second]
        first[0] == 'т' if first[0] == 'Н'|| first[0] == 'н'
        second[0] == 'т' if second[0] == 'Н'|| second[0] == 'н'
        first[-1] == 'е' if first[-1] == 'о' || first[-1] == 'О' 
        second[-1] == 'е' if second[-1] == 'о' || second[-1] == 'О' 
        expect(Strings.correct_strings(input)).to eq(Array[first, second])
      end
    end
    context 'when the array of strings is empty' do
      it 'returns nil' do
        expect(Strings.correct_strings([])).to eq(nil)
      end
    end
  end
end
