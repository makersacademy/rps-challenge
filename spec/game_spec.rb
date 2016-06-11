require 'game'

describe Game do
	subject(:game) {described_class.new}

	describe '#player_choice' do
		it "allows the user to select rock/paper/scissors" do
			expect(game.player_choice("rock")).to eq "rock"
		end
	end

	describe "#computer_choice" do
		it "returns a random choice - rock, paper or scissors" do
			srand(67809)
			expect(game.computer_choice).to eq "scissors"
		end
	end

	describe '#result' do
		it "shows the result of a single game - computer wins" do
			game.player_choice("paper")
			srand(67809)
			game.computer_choice
			expect(game.result).to eq "Computer wins!"
		end

		it "shows the result of a single game - player wins" do
			game.player_choice("rock")
			srand(67809)
			game.computer_choice
			expect(game.result).to eq "You win!"
		end

		it "checks whether there is a tie" do
			game.player_choice("scissors")
			srand(67809)
			game.computer_choice
			expect(game.result).to eq "It is a tie!"
		end
	end

	describe '#self.create' do
		it "creates a new instance of the class" do
			game = Game.create
			expect(Game.instance).to eq game
		end
	end
end
