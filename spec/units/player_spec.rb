require 'player'

describe Player do
  subject(:tolu) { Player.new("Tolu") }

  describe "#name" do
    it "returns players name" do
      expect(tolu.name).to eq("Tolu")
    end
  end
end
