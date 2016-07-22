require "player"

describe Player do
  subject(:player) {Player.new("Richard")}
  describe "#initialize" do
    it "displays player name" do
      expect(player.name).to eq "Richard"
    end
  end
end
