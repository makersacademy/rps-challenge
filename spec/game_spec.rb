require "game"

describe Game do
  let(:subject) { described_class.new(player, computer) }
  let(:player) { double :player, choice: "rock" }

  describe "#who_wins" do
  let(:computer) { double :computer, choice: "paper" }
    it "compares the two choices and returns the winner" do
      expect(subject.who_wins).to eq computer
    end
  end

  describe "#who_wins" do
    let(:computer) { double :computer, choice: "scissors" }
    it "compares the two choices and returns the winner" do
      expect(subject.who_wins).to eq player
    end
  end

  describe "#who_wins" do
    let(:computer) { double :computer, choice: "rock" }
    it "compares the two choices and returns the winner" do
      expect(subject.who_wins).to eq true
    end
  end
end
