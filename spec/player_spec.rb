require "player.rb"

describe Player do
  subject(:player) { described_class.new("Simon") }

  describe "#name" do
    it "returns the name of the player" do
      expect(player.name).to eq "Simon"
    end
  end

  describe "#weapon" do
    it "returns the weapon chosen" do
      player.weapon_choice("Rock")
      expect(player.weapon).to eq "Rock"
    end
  end

end
