require "player"

describe Player do
  subject(:kitty) { described_class.new("Kitty") }

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
end
