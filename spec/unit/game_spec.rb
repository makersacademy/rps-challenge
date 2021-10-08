require 'game'

describe Game do
  let(:gianluigi) { double("Gianluigi") }
  let(:mario) { double("Mario") }
  let(:game) {described_class.create(gianluigi, mario)}

  describe '#player1' do
    it "returns player 1" do
      expect(game.player1).to eq gianluigi
    end
  end

  describe '#player1' do
    it "returns player 2" do
      expect(game.player2).to eq mario
    end
  end

  describe '#winner' do
    it "returns tie when a draw" do
      allow(gianluigi).to receive(:action).and_return("rock")
      allow(mario).to receive(:action).and_return("rock")
      expect(game.winner).to eq "tie"
    end

    it "returns player 1 when they win" do
      allow(gianluigi).to receive(:action).and_return("rock")
      allow(mario).to receive(:action).and_return("scissors")
      expect(game.winner).to eq gianluigi
    end

    it "returns player 2 when they win" do
      allow(gianluigi).to receive(:action).and_return("rock")
      allow(mario).to receive(:action).and_return("paper")
      expect(game.winner).to eq mario
    end
  end
end