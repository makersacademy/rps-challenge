require "player"

describe Player do
  subject(:player) { described_class.new("Mittens")}

  describe "#name" do
    it "should display player's name" do
      expect(player.name).to eq "Mittens"
    end
  end
end
