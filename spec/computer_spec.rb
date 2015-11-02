require 'computer'

describe Computer do 
	subject(:computer) {described_class.new}

	describe '#initialise' do
		it 'assigns nil to #move' do
			expect(computer.move).to eq nil
		end
	end

	describe '#choice' do
		it 'chooses a random move' do
			computer.choice
			expect(computer.move).not_to be nil
		end
	end
end
