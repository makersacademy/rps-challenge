require "game"

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }

  # before do
  #   allow(player_1).to receive(:name) { "Holden Caulfield" }
  #   allow(player_2).to receive(:name) { "HAL" }
  # end

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

  describe "#winner" do
    it "returns the winner of the game" do
      allow(player_1).to receive(:weapon) { "rock" }
      allow(player_2).to receive(:weapon) { "scissors" }
      expect(game.winner).to eq player_1
    end
  end

  describe "#loser" do
    it "returns the loser of the game" do
      allow(player_1).to receive(:weapon) { "rock" }
      allow(player_2).to receive(:weapon) { "scissors" }
      expect(game.loser).to eq player_2
    end
  end
end
