require 'player'

describe Player do
  subject(:tolu) { Player.new("Tolu") }

  describe "#name" do
    it "returns players name" do
      expect(tolu.name).to eq("Tolu")
    end
  end

  describe "#weapon" do
    it "returns players chosen weapon" do
      tolu.choose_weapon("Scissors")
      expect(tolu.weapon).to eq("Scissors")
    end
  end
end
