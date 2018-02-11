require "player"

describe Player do
  subject(:player) { described_class.new("Serena") }

  describe "#name" do
    it "returns the player's name" do
      expect(player.name).to eq "Serena"
    end
  end
end