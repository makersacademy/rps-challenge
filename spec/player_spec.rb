require "player"

describe Player do
  subject(:player) { described_class.new("Holden Caulfield") }

  describe "#name" do
    it "accepts a name as a parameter" do
      expect(player.name).to eq "Holden Caulfield"
    end

    it "defaults to HAL, the computerised player" do
      expect(described_class.new.name).to eq "HAL"
    end
  end

  describe "#play_weapon" do
    it "sets the player's weapon" do
      player.play_weapon("rock")
      expect(player.weapon).to eq "rock"
    end
  end
end
