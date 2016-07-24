require "player"

describe Player do
  subject(:player) {Player.new("Richard")}
  describe "#initialize" do
    it "displays player name" do
      expect(player.name).to eq "Richard"
    end
    it "has not made a choice yet" do
      expect(player.choice).to eq nil
    end
  end
end
