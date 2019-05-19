require 'game'

describe Game do
  subject(:game) { Game.new(:player, :computer) }
  describe "#initialize" do
    it "it initializes with a player" do
      expect(game.player).to eq(:player)
    end
    it "it initializes with a computer" do
      expect(game.computer).to eq(:computer)
    end
  end
end
