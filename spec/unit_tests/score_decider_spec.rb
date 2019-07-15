require 'score_decider'

describe ScoreDecider do
  context "Player 1 plays Rock" do
    it "Player 2 plays Rock" do
      score_1 = described_class.new("Rock", "Rock")
      expect(score_1.decider).to eq "Tie!"
    end

    it "Player 2 plays Scissors" do
      score_2 = described_class.new("Rock", "Scissors")
      expect(score_2.decider).to eq "Rock beats scissors: Player 1 wins!"
    end

    it "Player 2 plays Paper" do
      score_3 = described_class.new("Rock", "Paper")
      expect(score_3.decider).to eq "Paper beats rock: Player 2 wins!"
    end
  end

  context "Player 1 plays Paper" do
    it "Player 2 plays Rock" do
      score_1 = described_class.new("Paper", "Rock")
      expect(score_1.decider).to eq "Paper beats rock: Player 1 wins!"
    end

    it "Player 2 plays Scissors" do
      score_2 = described_class.new("Paper", "Scissors")
      expect(score_2.decider).to eq "Scissors beats paper: Player 2 wins!"
    end

    it "Player 2 plays Paper" do
      score_3 = described_class.new("Paper", "Paper")
      expect(score_3.decider).to eq "Tie!"
    end
  end

  context "Player 1 plays Scissors" do
    it "Player 2 plays Rock" do
      score_1 = described_class.new("Scissors", "Rock")
      expect(score_1.decider).to eq "Rock beats scissors: Player 2 wins!"
    end

    it "Player 2 plays Scissors" do
      score_2 = described_class.new("Scissors", "Scissors")
      expect(score_2.decider).to eq "Tie!"
    end

    it "Player 2 plays Paper" do
      score_3 = described_class.new("Scissors", "Paper")
      expect(score_3.decider).to eq "Scissors beats paper: Player 1 wins!"
    end
  end
end
