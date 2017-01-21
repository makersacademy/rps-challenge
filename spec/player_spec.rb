require "player"

describe Player do
  subject(:player1) {described_class.new("Player1")}

  describe "#name" do
    it "returns the players name" do
      expect(player1.name).to eq "Player1"
    end
  end

  describe "#score" do
    it "returns the players score" do
      expect(player1.score).to eq 0
    end
  end

  describe "#score" do
    it "returns the players score" do
      player1.add_score(1)
      expect(player1.score).to eq 1
    end
  end
end
