require 'game'
require 'player'
require 'comp'

describe Game do
	subject(:game) { Game.new(player) }
	let(:player) { double :player }
	
	it "initializes with a player"
	expect(game.player).to eq player
	
end 