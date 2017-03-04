require 'game'
require 'player'

describe Game do

  let(:game) { described_class.new(player) }
  let(:player) { Player.new("Bob") }

  describe "#player" do
    it "returns the player" do
      expect(game.player.name).to eq "Bob"
    end
  end
end
