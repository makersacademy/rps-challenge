require 'Computer'

describe Computer do
	subject(:computer) { described_class.new }

	describe '#choose_weapon' do
		it 'gets a random weapon from the WEAPONS array' do
			expect(Game::WEAPONS).to receive(:sample)
			computer.choose_weapon
		end 
	end
end