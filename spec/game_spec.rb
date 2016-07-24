require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player, name: "Sal" }
  context "the game starts" do
    it "with one player" do
      expect(game.player).to eq player
    end

    it "with no attacks" do
      expect(game.attack).to eq nil
    end
  end

  context "Player's info" do
    it "the game knows the player's name" do
      expect(game.player_name).to eq "Sal"
    end
  end
end
