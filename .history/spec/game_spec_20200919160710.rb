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
		it "can state if when computer won" do
			player.choice('paper')
			srand(0)
			comp.move
			expect(game.result).to eq "Computer won!"
		end 

		it "can state when the player won" do
			player.choice('scissors')
			srand(0)
			comp.move
			expect(game.result).to eq "Ursie is a winner!!!"
		end

		it "can state when its a draw" do
			player.choice('rock')
			srand(0)
			comp.move
			expect(game.result).to eq "It's a draw"
		end 

		it "can state when the player lost" do 
			player.choice('paper')
			srand(0)
			comp.move
			expect(game.result).to eq "Computer won!"
		end 

		it 'can state when player wins again' do
			player.choice('spock')
			srand(0)
			comp.move
			expect(game.result).to eq "Urise is a winner!!!"
	end 
end