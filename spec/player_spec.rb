require 'player'

describe Player do
  subject(:player) { described_class.new("Yvonne") }

  describe "#name" do
    it "returns the player's name" do
      expect(player.name).to eq "Yvonne"
    end
  end
end
