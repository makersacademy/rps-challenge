require "game"
require "player"

describe Game do
  subject(:game) {Game.new(player)}
  subject(:player) {double :player}

  describe "#initialize" do
    it "accepts a player" do
      expect(game.player).to eq player
    end
  end

end
