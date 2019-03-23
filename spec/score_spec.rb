require "score"

describe Score do
  it { is_expected.to respond_to(:computer_score) }
  it { is_expected.to respond_to(:result) }
  
  subject(:score) { Score.new("Rock") }

  it "gives a computer score of 'Paper'" do
    allow(score).to receive(:computer_score) { "Paper" }
    expect(score.computer_score).to eq "Paper"
  end

  it "gives a computer score of 'Rock'" do
    allow(score).to receive(:computer_score) { "Rock" }
    expect(score.computer_score).to eq "Rock"
  end

  it "displays computer as the winner" do
    allow(score).to receive(:computer_turn) { "Paper" }
    expect(score.result).to eq "Computer wins!"
  end

  it "displays player as the winner" do
    allow(score).to receive(:computer_turn) { "Scissors" }
    expect(score.result).to eq "Congratulations, you win Matt!"
  end
end