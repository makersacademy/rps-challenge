require 'game'

describe Game do

  let (:player) { double :player, move: :rock, name: :player }
  let (:player2) { double :player2, name: :player2}
  subject(:game) { described_class.new(player, player2) }

  describe "#initialize" do
    it 'initializes players' do
      expect(game.player).to eq player
      expect(game.player2).to eq player2
    end
  end

  describe "#winner" do
    context "when player 1 chooses the winning move" do
      it "should return player 1" do
        allow(player2).to receive(:move).and_return(:scissors)
        expect(game.winner).to eq :player
      end
    end
    context "when player2 chooses the winning move" do
      it "should return player 2" do
        allow(player2).to receive(:move).and_return(:paper)
        expect(game.winner).to eq :player2
      end
    end
    context "when both choose the same move" do
      it "should return draw" do
        allow(player2).to receive(:move).and_return(:rock)
        expect(game.winner).to eq "No one"
      end
    end
  end

  describe "#swap players" do
    it "should swap players round" do
      game.swap_players
      expect(game.player).to eq player2
      expect(game.player2).to eq player
    end
  end
end

