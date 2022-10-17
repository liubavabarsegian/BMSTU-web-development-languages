# frozen_string_literal: true

require_relative 'integral_yield'

RSpec.describe Integral do
  describe '#intprg' do
    context 'epsilon == 0' do
      it 'returns nil' do
        expect(Integral.intprg(30, 400, 0) { |x| Math.exp(x) / (x + 1) }).to eq(nil)
      end
    end
    context 'a == b' do
      it 'returns nil' do
        a = rand(0..50)
        expect(Integral.intprg(a, a, 500) { |x| Math.exp(x) / (x + 1) }).to eq(nil)
      end
    end
    context 'when everything is fine' do
      it 'returns correct result' do
        epsilon = (Integral.intprg(0, 1, rand(20..10_000)) { |x| Math.exp(x) / (x + 1) } - 1.1253860828001119)
        expect(epsilon.abs).to be < 0.1
        epsilon = (Integral.intprg(0, 2, rand(20..10_000)) { |x| x * (x - 1) } - 2 / 3.to_f)
        expect(epsilon.abs).to be < 0.1
      end
    end
  end
end
