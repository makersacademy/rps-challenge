require 'game'
require 'player'
require 'computer'

describe Game do
  subject(:game) { Game.new(:player, :computer) }
  subject(:player) { Player.new("Sam") }
  subject(:computer) { Computer.new }
  describe "#initialize" do
    it "it initializes with a player" do
      expect(game.player).to eq(:player)
    end
    it "it initializes with a computer" do
      expect(game.computer).to eq(:computer)
    end
  end
  # describe "#win?" do
  #   it "returns true if player has won" do
  #   srand(2456)
  #   allow(Player.new("sam")).to receive(:choice) { rock }
  #   expect(game.win?).to eq(true)
  #   end
  # end
end
