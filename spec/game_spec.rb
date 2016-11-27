require 'game'

describe Game do

	subject(:game) { described_class.new(player) }
	let(:player) { double(:player) }

	it "should be initialized with a player" do
		expect(game.player).to eq player
	end

	describe "#determine_winner" do

		it "can determine when the player has won" do
			allow(player).to receive(:weapon).and_return(:paper)
			srand(2) # computer will choose Rock
			game.determine_winner
			expect(game.result).to eq :win
		end

		it "can determine when the computer has won" do
			allow(player).to receive(:weapon).and_return(:scissors)
			srand(2)
			game.determine_winner
			expect(game.result).to eq :lose
		end

		it "can determine when there is a draw" do
			allow(player).to receive(:weapon).and_return(:rock)
			srand(2)
			game.determine_winner
			expect(game.result).to eq :draw
		end
	end
end