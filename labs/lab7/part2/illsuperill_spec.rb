# frozen_string_literal: true

require_relative 'ill'
require_relative 'super_ill'

RSpec.describe Ill do
  context 'checking childs of Ill' do
    it 'returns SuperIll' do
      expect(Ill.subclasses[0]).to eq SuperIll
    end
  end
end

RSpec.describe SuperIll do
  context 'checking the parent of SuperIll' do
    it 'returns Ill' do
      super_ill = SuperIll.new
      expect(super_ill.class.superclass).to eq Ill
      expect(super_ill.class.ancestors.include?('Ill'))
    end
  end
end

RSpec.describe SuperIll do
  describe '#next_clinical_examination' do
    context 'checking the next clinical examination year' do
      it 'must return + 3' do
        year = rand(1900...2022)
        super_ill = SuperIll.new('Someone', 23, year)
        expect(super_ill.next_clinical_examination).to eq year + 3
      end
    end
  end
end
