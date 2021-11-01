require 'player'

describe Player do

	let(:name_1) { double('name_1') }
	let(:player_1) { Player.new(name_1, 'rock') }

	it 'returns the player name' do
		expect(player_1.name).to eq  name_1
	end

end
