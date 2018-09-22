require "./lib/player"

describe Player do

  let(:new_player) { described_class.new("Florence") }

  describe "#initialize" do
    it "knows it's own name" do
      expect(new_player.name).to eq("Florence")
    end
  end

  describe "#player_move" do
    it "returns a player move" do
      new_player.action("Rock")
      expect(new_player.player_move).to eq("Rock")
    end
  end

end
