require 'game'

describe Game do
 	context "Player 1 vs Player 2 results" do
	 	it "returns a draw if players both choose the same option" do
	 		expect(subject.play(:rock, :rock)).to eq "Draw"
	 	end

	 	it "returns Player 1 wins if rock vs scissors" do
	 		expect(subject.play(:rock, :scissors)).to eq "Player 1 Wins"
	 	end

	 	it "returns Player 1 wins if scissors vs paper" do
	 		expect(subject.play(:scissors, :paper)).to eq "Player 1 Wins"
	 	end

	 	it "returns Player 1 wins if paper vs rock" do
	 		expect(subject.play(:paper, :rock)).to eq "Player 1 Wins"
	 	end

	 	it "returns Player 2 wins if rock vs paper" do
	 		expect(subject.play(:rock, :paper)).to eq "Player 2 Wins"
	 	end

	 	it "returns Player 2 wins if paper vs scissors" do
	 		expect(subject.play(:paper, :scissors)).to eq "Player 2 Wins"
	 	end

	 	it "returns Player 2 wins if rock vs scissors" do
	 		expect(subject.play(:scissors, :rock)).to eq "Player 2 Wins"
	 	end
	end

	#need to stub out random nature of .sample
  xit "creates a random choice of RPS for computer player" do
  	subject.random_choice
    expect(subject.CHOICES).to eq [:rock, :paper, :scissors]
 	end

end 
