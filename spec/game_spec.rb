require "game"

describe Game do

  let(:player_1) { "Kealan" }
  let(:player_2) { "Not Kealan" }

  describe "#initialize" do
    it "should store a name when one is passed as an argument" do
      game = Game.new(player_1, player_2)
      expect(game.player_1).to eq(player_1)
    end

    it "should make player 1 the active player on initialize" do
      game = Game.new(player_1, player_2)
      expect(game.active_player).to eq(player_1)
    end
  end

end
