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

  describe "#winner" do
    it "knows that rock beats scissors" do
      allow(player_1).to receive(:weapon) { "rock" }
      allow(player_2).to receive(:weapon) { "scissors" }
      expect(game.winner).to eq player_1
    end

    it "knows that scissors beats paper" do
      allow(player_1).to receive(:weapon) { "scissors" }
      allow(player_2).to receive(:weapon) { "paper" }
      expect(game.winner).to eq player_1
    end

    it "knows that paper beats rock" do
      allow(player_1).to receive(:weapon) { "paper" }
      allow(player_2).to receive(:weapon) { "rock" }
      expect(game.winner).to eq player_1
    end

    it "returns a draw if no player has won" do
      allow(player_1).to receive(:weapon) { "rock" }
      allow(player_2).to receive(:weapon) { "rock" }
      expect(game.winner).to eq :draw
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
