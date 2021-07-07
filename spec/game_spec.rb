require "./lib/game"

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe "#player_1" do
    it "retrieves the first player" do
      expect(game.player_1).to eq player_1
    end
  end

  describe "#player_2" do
    it "retrieves the second player" do
      expect(game.player_2).to eq player_2
    end
  end

  describe "#computer_move" do
    it "returns random selection" do
      allow(player_2).to receive(:random_selection).and_return("rock")
      expect(player_2.random_selection).to eq("rock")
    end
  end
end
