require "score"

describe Score do
  subject(:score) { Score.new("Rock", "Matt") }

  it "gives a computer score of 'Paper'" do
    allow(score).to receive(:play_computer) { "Paper" }
    expect(score.play_computer).to eq "Paper"
  end

  it "gives a computer score of 'Rock'" do
    allow(score).to receive(:play_computer) { "Rock" }
    expect(score.play_computer).to eq "Rock"
  end

  it "displays computer as the winner" do
    allow(score).to receive(:play_computer) { "Paper" }
    expect(score.result).to eq "Computer wins!"
  end

  it "displays player as the winner" do
    allow(score).to receive(:play_computer) { "Scissors" }
    expect(score.result).to eq "Congratulations, you win Matt!"
  end

  it "displays result as a draw" do
    allow(score).to receive(:play_computer) { "Rock" }
    expect(score.result).to eq "A draw!"
  end
end
