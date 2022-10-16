# frozen_string_literal: false

require_relative 'strings'

RSpec.describe Strings do
  include Strings
  describe '#correct_strings' do
    context 'when the string is valid' do
      it 'corrects the string' do
        strings = ['Наша Таня громко плачет', 'Уронила в речку мячик']
        expect(Strings.correct_strings(strings)).to eq(['таша Таня громке плачет', 'Уронила в речку мячик'])
      end
    end

    context 'when the array of strings is empty' do
      it 'returns nil' do
        expect(Strings.correct_strings([])).to eq(nil)
      end
    end
  end
end
