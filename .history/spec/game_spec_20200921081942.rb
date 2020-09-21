require 'game'
require 'player'


describe Game do
	subject(:game) { Game.new(player) }
	let(:player) { Player.new("Ursie") }
	
	it "initializes with a player" do
	expect(game.player).to eq player
	end 

	describe "result" do
		it "can state if it's a draw" do
			player.choice('rock')
			srand(0)
			comp
			expect(game.result).to eq "It's a draw"
		end 

		it "can state when the computer won" do
			player.choice('scissors')
			srand(0)
			game.bot
			expect(game.result('scissors')).to eq "Computer won!"
		end

		it "can state when the player won" do 
			player.choice('paper')
			srand(0)
			comp
			expect(game.result).to eq "Ursie is a winner!!!"
		end
	end 
end