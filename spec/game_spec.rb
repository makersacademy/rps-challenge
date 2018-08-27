require "game"

describe Game do
  describe "#comp_move" do
    let(:game) { Game.new("player_move") }
    it "returns a valid move for RPS" do
      expect(game.valid_moves).to include(game.c_move)
    end
  end
end
