require "player"

describe Player do
  subject(:kitty) { described_class.new("Kitty") }
  let(:weapon) {double :weapon}

  describe "#name" do
    it "returns player's name" do
      expect(kitty.name).to eq "Kitty"
    end
  end

  describe "#choice" do
    it "returns player's choice" do
      expect(kitty.choice).to eq nil
    end
  end

  describe "#player can choose" do
    it "returns the weapon" do
      expect(kitty.choose(weapon)).to eq weapon
    end
  end
end
