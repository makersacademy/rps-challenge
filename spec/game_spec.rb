require 'game'

describe Game do
	let(:game) {Game.new}

	context "when registering a player" do
 
		it "can add a player to the game" do
			expect(game.add_player("Name")).to eq "Name"
		end
	end

	context "When Player1 is the winner" do

		it "should allow Player1 to win when Player1 selects paper and the opponent selects rock" do
			expect(game.outcome(:paper, :rock)).to eq "Congratulations, you have won!"
		end

		it "should allow Player1 to win when Player1 selects rock and the opponent selects scissors" do
			expect(game.outcome(:rock, :scissors)).to eq "Congratulations, you have won!"
		end

		it "should allow Player1 to win when Player1 selects scissors and the opponent selects paper" do
			expect(game.outcome(:scissors, :paper)).to eq "Congratulations, you have won!"
		end
	end

	context "When Player1 is the loser" do

		it "should allow Player1 to lose when Player1 selects rock and the opponent selects paper" do
			expect(game.outcome(:rock, :paper)).to eq "What a massive loooooooooooser!"
		end

		it "should allow Player1 to lose when Player1 selects scissors and the opponent selects rock" do
			expect(game.outcome(:scissors, :rock)).to eq "What a massive loooooooooooser!"
		end

		it "should allow Player1 to lose when Player1 selects paper and the opponent selects scissors" do
			expect(game.outcome(:paper, :scissors)).to eq "What a massive loooooooooooser!"
		end
	end


	context "When the players draw" do

		it "should allow Player1 to draw when Player1 selects rock and the opponent selects rock" do
			expect(game.outcome(:rock, :rock)).to eq "How boring! Its a draw!"
		end

		it "should allow Player1 to draw when Player1 selects scissors and the opponent selects scissors" do
			expect(game.outcome(:scissors, :scissors)).to eq "How boring! Its a draw!"
		end

		it "should allow Player1 to draw when Player1 selects paper and the opponent selects paper" do
			expect(game.outcome(:paper, :paper)).to eq "How boring! Its a draw!"
		end
	end
end