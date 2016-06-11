require 'player'

describe Player do
	subject(:player) {described_class.new('Riya')}

	describe '#name' do
		it 'returns the players name' do
			expect(player.name).to eq 'Riya'
		end
	end

	describe '#add_points' do
		it 'changes players points by Game::POINT_INCREMENT' do
			expect{player.add_points}.to change{player.points}.by(Game::POINT_INCREMENT)
		end
	end

end