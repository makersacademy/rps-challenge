require 'player'

describe Player do

	let(:name_1) { double('name_1') }
	let(:name_2) { double('name_2') }
	let(:player_1) { Player.new(name_1) }
	let(:player_2) { Player.new(name_2) }

	it 'returns the player name' do
		expect(player_1.name).to eq  name_1
	end

end
