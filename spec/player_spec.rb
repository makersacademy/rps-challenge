require 'player'

describe Player do
  subject(:player) {described_class.new("Ben")}

  describe "#default" do
    it "initializes with the player's name"do
      expect(player.name).to eq "Ben"
    end
  end

end
