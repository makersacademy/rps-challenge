require 'computer' 

describe Computer do 
	subject(:computer) { described_class.new }

	before do
		srand 1
	end

	describe '#move' do
		it 'returns a move' do
			allow(Kernel).to receive(:rand).and_return(2)
			expect(Computer.move).to eq 'Scissors'
		end
	end
end	