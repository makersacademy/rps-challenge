require "game"

describe Game do

  let(:player_1) { "Kealan" }
  let(:player_2) { "Not Kealan" }

  describe "#initialize" do
    it "should be initialized with two arguments" do
      game = Game.new(player_1, player_2)
      expect(game.player_1).to eq("Kealan")
    end
  end

end