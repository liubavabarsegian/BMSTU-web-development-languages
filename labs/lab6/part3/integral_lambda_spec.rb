# frozen_string_literal: true

require_relative 'integral_lambda'

RSpec.describe Integral do
  include Integral
  describe '#intprg' do
    context 'epsilon == 0' do
      it 'returns nil' do
        func1 = ->(x) { Math.exp(x) / (x + 1) }
        expect(Integral.intprg(rand(0..10), rand(11..50), 0, func1)).to eq(nil)
      end
    end
    context 'a == b' do
      it 'returns nil' do
        a = rand(0..50)
        func1 = ->(x) { Math.exp(x) / (x + 1) }
        expect(Integral.intprg(a, a, rand(1..10_000), func1)).to eq(nil)
      end
    end
    context 'when everything is fine' do
      it 'returns correct result' do
        func1 = ->(x) { Math.exp(x) / (x + 1) }
        expect((Integral.intprg(0, 1, rand(20..10_000), func1) - 1.1253860828001119).abs).to be < 0.1
        func2 = ->(x) { x * (x - 1) }
        expect((Integral.intprg(0, 2, rand(20..10_000), func2) - 2 / 3.to_f).abs).to be < 0.1
      end
    end
  end
end
