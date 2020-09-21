require 'game'
require 'player'
require 'comp'

describe Game do
	player = Player.new("Ursie")
	comp = Comp.new
	subject(:game) { Game.new(player, comp) }

	describe "#result" do
		it "says that the player 1 won" do
		player.choice("paper") 
		comp.move == "rock"
		expect(game.result(player,comp)).to eq "#{player} you won"
		end 
	end 

	it "confirms it is a draw" do
	player.choice("paper")
	comp.move == "paper"
	expect(game.result(player.comp)).to eq "Draw"
	end 
end 
end 