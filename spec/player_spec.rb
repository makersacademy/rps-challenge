require 'player'

describe Player do

	subject(:player) {described_class.new("player_1")}
	describe '#name' do
		it 'returns the name of the player' do
			expect(player.name).to eq "player_1"
		end
	end
	describe '#self.create' do
		it "creates a new instance of the class" do
			player = Player.create("player_1")
			expect(Player.instance).to eq player
		end
	end
end
