require 'computer'

describe Computer do

	subject(:computer) {described_class.new}

	context '#set_choice' do
		it 'sets the computers choice' do
			computer.set_choice
			expect(Game::CHOICES).to include computer.choice
		end
	end

end