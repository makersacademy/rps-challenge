require 'player'

describe Player do
  subject(:fran) { described_class.new("Fran") }

  describe "#name" do
    it "returns the name" do
      expect(fran.name).to eq "Fran"
    end
  end

  describe "#round_hand" do
    it "can choose an option to play on each round" do
      fran.round_hand("Rock")
      expect(fran.hand).to eq "Rock"
    end
  end
end
