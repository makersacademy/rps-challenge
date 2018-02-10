require "player"

describe Player do
subject(:player) {described_class.new("Ben")}

  describe "#Name" do
    it "returns player name" do
      expect(player.name).to eq "Ben"
    end
  end

end
