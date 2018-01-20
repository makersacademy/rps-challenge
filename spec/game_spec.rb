require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player }
  let(:player2) { double :player }

  describe "#player1" do
    it "retrives player1" do
      expect(game.player1).to eq player1
    end
  end

  describe "#player2" do
    it "retrives player2" do
      expect(game.player2).to eq player2
    end
  end

  describe "#results" do
    context 'when both players choose Paper' do
      it "results in a draw" do
        allow(player1).to receive(:choice).and_return 'Paper'
        allow(player2).to receive(:choice).and_return 'Paper'
        game.moves(player1,player2)
      end
    end
    context 'when player 1 chooses Rock and player 2 chooses Paper' do
      it "results in player 2 winnning" do
        allow(player1).to receive(:choice).and_return 'Rock'
        allow(player2).to receive(:choice).and_return 'Paper'
        game.moves(player1,player2)
      end
    end
  end
end
