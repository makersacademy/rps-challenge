require 'player'

describe Player do

	let(:player){Player.new}
	let(:game){double :game, options: %w(scissors paper rock)}
	let(:computer){double :computer}
	
	it 'should have player 1' do
		player.player_1 = 'diego'
		expect(player.player_1).to eq 'diego'
	end

	it 'should have player 2' do
		player.player_1 = 'Jimmy Page'
		expect(player.player_1).to eq 'Jimmy Page'
	end

	it 'should be able to select an option' do
		player.set_pick(game.options[1])
		expect(player.pick).to eq 'paper'
	end

end