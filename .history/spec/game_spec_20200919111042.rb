require 'game'
require 'player'
require 'comp'

describe Game do
	player = Player.new("Ursie")
	comp = Comp.new
	subject = Game.new(player, comp)

	describe "#result" do
	it "says that the player 1 won" do
		player.move("paper")
		comp.move == "rock"
		expect(game.result(player,comp)).to eq "Ursie you won"
	end 
end 
end 