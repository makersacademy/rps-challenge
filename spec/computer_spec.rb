require 'computer'

describe Computer do

	subject(:computer) {described_class.new}

	context '#computer_move' do
		it 'sets the computers choice' do
			computer.choice
			expect(Game::CHOICES).to include computer.choice
		end
	end

end