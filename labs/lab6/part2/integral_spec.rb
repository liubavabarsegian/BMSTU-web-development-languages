# frozen_string_literal: true

require_relative 'integral'

RSpec.describe Integral do
  include Integral
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
        e = rand(0.0..0.01)
        epsilon = (Integral.integrate(0, 1, e) - (1 - Math.cos(1)) / 2)
        expect(epsilon.abs).to be < e
      end
    end
  end
end
