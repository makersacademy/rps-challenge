require 'player'

describe Player do
  subject(:player) { Player.new("Hyko") }

  describe "#name" do
    it "returns the player's name" do
      expect(player.name).to eq "Hyko"
    end
  end

  describe "#score" do
    it "returns the player's score" do
      expect(player.score).to eq described_class::DEFAULT_SCORE
    end
  end

  describe "#choice" do
    it "returns the player's choice" do
      player.choice("ROCK")
      expect(player.weapon).to eq "ROCK"
    end
  end
end
