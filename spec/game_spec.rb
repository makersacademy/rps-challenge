require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :comp_player2 }

  describe "#default" do
    it "returns player 1" do
      expect(game.player_1).to eq player_1
    end
    it "returns player 2" do
      expect(game.player_2).to eq player_2
    end
  end

  context 'results are announced' do
    before do
      allow(player_1).to receive(:move).and_return(:rock)
    end

    it "returns win if player move is rock vs scissors" do
      allow(player_2).to receive(:move).and_return(:scissors)
      expect(game.outcome).to eq :win
    end

    it "returns lose if player move is rock vs paper" do
      allow(player_2).to receive(:move).and_return(:paper)
      expect(game.outcome).to eq :lose
    end

    it 'returns a draw when player move is rock vs rock' do
      allow(player_2).to receive(:move).and_return(:rock)
      expect(game.outcome).to eq :draw
    end
  end
end
