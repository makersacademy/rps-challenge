require 'player'

describe Player do

subject(:player) { described_class.new("name") }

  describe "#name" do
    it "returns the player's name" do
      expect(player.name).to eq("name")
    end
  end

end
