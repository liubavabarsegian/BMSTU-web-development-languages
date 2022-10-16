# frozen_string_literal: true

require_relative 'integral'

RSpec.describe Integral do
  describe '#integrate' do
    context 'epsilon == 0' do
      it 'returns nil' do
        a = rand(0..10)
        b = rand(11..50)
        expect(Integral.integrate(a, b, 0)).to eq(nil)
      end
    end
    context 'a == b' do
      it 'returns nil' do
        a = rand(0..50)
        e = rand(0.0..1.0)
        expect(Integral.integrate(a, a, e)).to eq(nil)
      end
    end
    context 'when everything is fine' do
      it 'returns correct result' do
        a = rand(0.0..5.0)
        b = rand(5.1..10.0)
        e = rand(0.0..1.0)
        epsilon = (Integral.integrate(a, b, e) - (1 - Math.cos(1)) / 2)
        expect(epsilon.abs).to be < e
      end
    end
  end
end
