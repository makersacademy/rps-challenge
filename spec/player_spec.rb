require "./lib/player"

describe Player do
  describe "#initialize" do
    it "knows it's own name" do
      new_player = Player.new("Florence")
      expect(new_player.player).to eq("Florence")
    end
  end
end
