require ".lib/game"

describe Game do
  let(:mock_computer) { double :computer }

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
      allow(mock_computer).to receive(:random_selection).and_return("rock")
      expect(mock_computer.random_selection).to eq("rock")
    end
  end
end
