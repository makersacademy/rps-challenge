require 'player'

describe Player do

	let(:name) { double('name') }
	let(:player) { Player.new(name) }

	it 'returns the player name' do
		expect(player.name).to eq  name
	end

	it 'raises error if invalid weapon selected' do
	  expect{player.weapon('sponge')}.to raise_error "That it not an option"
	end

end
