require "player"

describe Player do

  describe "#initialize" do
    it "should store the players name on initialize" do
      player = Player.new("Kealan")
      expect(player.name). to eq("Kealan")
    end
  end

end
