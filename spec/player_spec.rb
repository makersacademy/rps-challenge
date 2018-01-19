require "player"

describe Player do
  subject(:player) { described_class.new("Ed") }

  describe "#initialize" do
    it "should return player_1 name as Ed" do
      expect(player_1.name).to eq("Ed")
    end
  end
end