require 'game'
require 'player'
require 'comp'

describe Game do
	subject(:game) { Game.new(player) }
	let(:player) { double :player }
	
	it "initializes with a player" do
	expect(game.player).to eq player
	end 

	descibe "result" do
		it "can state if its a draw" do
			player.move('paper')
			srand(1)
			comp.move
			expect(game.result).to eq "It's a draw!"
		end 
	end 
end 