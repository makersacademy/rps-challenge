require "game"

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }

  describe "#player_1" do
    it "returns player 1" do
      expect(game.player_1).to eq player_1
    end
  end

  describe "#player_2" do
    it "returns player 2" do
      expect(game.player_2).to eq player_2
    end
  end

  describe "#computer_weapon" do
    it "selects a weapon for a computer player" do
      expect(player_2).to receive(:play_weapon)
      game.computer_weapon
    end
  end
end
