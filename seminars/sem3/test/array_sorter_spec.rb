require_relative 'array_sorter'

#rspec docs
RSpec.describe ArraySorter do
	describe '#sort_by_length' do
		context 'when parameter is nil' do
			it 'raises an error' do
				#expect(ArraySorter.sort_by_length(nil))
				#или 
				expect{ArraySorter.sort_by_length(nil)}.to raise_error(NoMethodError)
			end
		end
		
		context 'when parametr is a valid array' do
			#let!(:source_array) {Faker::ChuckNorris.fact}
			

			it 'returns sorted array' do
				expect(ArraySorter.sort_by_length(['aaa', 'bb', 'c'])).to eq(['c', 'bb', 'aaa'])
				#expect(described_class.sort_by_length(source_array)
			end	
		end
	end

end