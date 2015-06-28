require 'game'

describe Game do

let (:player){double :player, selection: 'Rock'}
let (:game){Game.new player}

	it 'requires a player when created' do
		expect(game.player).not_to eq ' '
	end

end