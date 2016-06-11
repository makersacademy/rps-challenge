require 'player'

describe Player do

	subject(:player) {described_class.new("player_1")}
	describe '#name' do
		it 'returns the name of the player' do
			expect(player.name).to eq "player_1"
		end
	end
end
