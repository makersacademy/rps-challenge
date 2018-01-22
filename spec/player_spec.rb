require 'player'

describe Player do
  subject(:player) { described_class.new("Hulk Hogan") }

  describe "#initialize" do
    it "should return player name" do
      expect(player.name).to eq("Hulk Hogan")
    end
  end
end
