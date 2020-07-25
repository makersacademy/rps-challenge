require ".lib/game"

describe Game do
  let(:mock_computer) { double :computer }

  describe "#computer_move" do
    it "returns random selection" do
      allow(mock_computer).to receive(:random_selection).and_return("rock")
      expect(mock_computer.random_selection).to eq("rock")
    end
  end
end
