require 'skynet'

describe Skynet do
	subject(:skynet) { described_class.new }

	describe '#shape' do
		it 'returns a random shape' do
			expect(Skynet::SHAPES).to include skynet.shape
		end
	end		
end	