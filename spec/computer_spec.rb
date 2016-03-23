require 'computer'

describe Computer do
	subject(:computer) { described_class }

	before do
		srand 1
	end

	describe '#move' do
		it 'returns a move' do
			allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
			expect(computer.move).to eq 'Scissors'
		end
	end
end
