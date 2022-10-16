# frozen_string_literal: true

require_relative 'arrays'

RSpec.describe Arrays do
  include Arrays
  describe '#find_av_salary' do
    context 'when salaries array is empty' do
      it 'must return nil' do
        expect(Arrays.find_av_salary([], [])).to eq(nil)
      end
    end
    context 'when arrays are not empty' do
      workers = %w[Petrov Ivanov Smirnov Sidorov]
      salaries = [43_000, 260_000, 124_000, 13_000]
      it 'must count correctly' do
        expect(Arrays.find_av_salary(workers, salaries)).to eq(110_000)
      end
    end
  end
end

RSpec.describe Arrays do
  include Arrays
  describe '#find_richest' do
    context 'when arrays are empty' do
      it 'must return nil' do
        expect(Arrays.find_richest([], [])).to eq(nil)
      end
    end
    context 'when one of the arrays is is empty' do
      it 'must return nil' do
        expect(Arrays.find_richest([], [30, 50])).to eq(nil)
      end
    end
    context 'when arrays have different size' do
      it 'must return nil' do
        expect(Arrays.find_richest(%w[Ivanov Petrov], [45_000])).to eq(nil)
      end
    end
    context 'when arrays are valid' do
      it 'must work correctly' do
        expect(Arrays.find_richest(%w[Petrov Ivanov Smirnov Sidorov],
                                   [43_000, 260_000, 124_000, 13_000])).to eq(%w[Ivanov Smirnov])
      end
    end
  end
end

RSpec.describe Arrays do
  include Arrays
  describe '#find_min_deviation' do
    context 'when arrays are empty' do
      it 'must return nil' do
        expect(Arrays.find_min_deviation([], [])).to eq(nil)
      end
    end
    context 'when one of the arrays is is empty' do
      it 'must return nil' do
        expect(Arrays.find_min_deviation([], [30, 50])).to eq(nil)
      end
    end
    context 'when arrays have different size' do
      it 'must return nil' do
        expect(Arrays.find_min_deviation(%w[Ivanov Petrov], [45_000])).to eq(nil)
      end
    end
    context 'when arrays are valid' do
      it 'must work correctly' do
        expect(Arrays.find_min_deviation(%w[Petrov Ivanov Smirnov Sidorov],
                                         [43_000, 260_000, 124_000, 13_000])).to eq('Smirnov')
      end
    end
  end
end
