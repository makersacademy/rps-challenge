require './docs/game.rb'

describe Game do
  let(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }
  describe "#initialize" do
    it "should have a player 1" do
      expect(game.player_1).to eq player_1
    end
    it "should have a player 2" do
      expect(game.player_2).to eq player_2
    end
  end
  describe "#calculate_result" do
    context "when both players throw the same move" do
      it "should return a draw" do
        allow(player_1).to receive(:move).and_return("rock")
        allow(player_2).to receive(:move).and_return("rock")
        expect(game.calculate_result(player_1, player_2)).to eq('draw')
      end
    end
    context "when the player has won" do
      it "should show a winning message" do
        allow(player_1).to receive(:move).and_return("rock")
        allow(player_2).to receive(:move).and_return("scissors")
        expect(game.calculate_result(player_1, player_2)).to eq('win')
      end
    end
    context "when the player has won" do
      it "should show a winning message" do
        allow(player_1).to receive(:move).and_return("paper")
        allow(player_2).to receive(:move).and_return("rock")
        expect(game.calculate_result(player_1, player_2)).to eq('win')
      end
    end
    context "when the player has won" do
      it "should show a winning message" do
        allow(player_1).to receive(:move).and_return("scissors")
        allow(player_2).to receive(:move).and_return("paper")
        expect(game.calculate_result(player_1, player_2)).to eq('win')
      end
    end
    context "when the player has lost" do
      it "should show a winning message" do
        allow(player_1).to receive(:move).and_return("paper")
        allow(player_2).to receive(:move).and_return("scissors")
        expect(game.calculate_result(player_1, player_2)).to eq('lose')
      end
    end
  end
end
