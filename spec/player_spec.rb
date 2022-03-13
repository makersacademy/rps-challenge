require 'player'

describe Player do
  subject(:player) { described_class.new("Rob") }
  describe "#initialize" do
    it "has name" do
      expect(player.name).to eq "Rob"
    end
    it "score starts at 0" do
      expect(player.score).to eq 0
    end
  end
end