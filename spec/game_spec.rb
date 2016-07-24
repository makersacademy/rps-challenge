require "game"
require "player"
require "computer"

describe Game do
  subject(:game) {Game.new(player, computer)}
  subject(:player) {double :player}
  subject(:computer) {double :computer}

  describe "#initialize" do
    it "accepts a player" do
      expect(game.player).to eq player
    end
    it "accepts the computer" do
      expect(game.computer).to eq computer
    end
  end
end
