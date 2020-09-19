require 'game'
require 'player'
require 'comp'

describe Game do
	player = Player.new("Ursie")
	comp = Comp.new
	subject = Game.new(player, comp)

	describe "#result" do
		it "says that the player 1 won" do
		player.choice("paper") 
		comp.move == "rock"
		expect(subject.result(player,comp)).to eq "#{player} you won"
		end 
	end 
end 