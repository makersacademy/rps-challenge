require 'game'
require 'player'
require 'comp'

describe Game do
	subject(:game) { Game.new(player) }
	let(:player) { Player.new("Ursie") }
	let(:comp) { Comp.new }
	
	it "initializes with a player" do
	expect(game.player).to eq player
	end 

	describe "result" do
		it "can state if its a draw" do
			player.choice('paper')
			srand(0)
			comp.move
			expect(game.result).to eq "It's a draw"
		end 

		it "can stte if player won" do
			player.choice('rock')
			srand(0)
			comp.move
			expect(game.result).to eq "You won!!!"
		end
	end 
end 