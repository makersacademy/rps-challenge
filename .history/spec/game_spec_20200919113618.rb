require 'game'
require 'player'
require 'comp'

describe Game do
	subject(:game) { Game.new(player) }
	let(:player) { double: player}
	let(:comp) {double :comp}

	describe "#result" do
		it "says that the player 1 won" do
		player.choice("paper")
		srand(0) 
		comp.move
		expect(game.result(player,comp)).to eq "#{player} you won"
		end 
	end 

	it "confirms it is a draw" do
	player.choice("paper")
	comp.move == "paper"
	expect(game.result(player.comp)).to eq "Draw"
	end 

end 