require 'game'

describe Game do
	subject(:game) {described_class.new}

	describe '#player_choice' do
		it "allows the user to select rock/paper/scissors" do
			expect(game.player_choice("rock")).to eq "rock"
		end
	end

	describe '#result' do
		it "shows the result of a single game" do
			game.player_choice("rock")
			allow(game).to receive(:computer_choice).and_return("paper")
			game.computer_choice
			expect(game.result).to eq "Computer wins!"
		end
	end
end
