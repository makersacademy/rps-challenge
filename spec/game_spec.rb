require 'game'

describe Game do
  let(:player_1) { double :player_1, :make_move => nil }
  let(:player_2) { double :player_2, :make_move => nil }
  subject(:game) { described_class.new(player_1, player_2)}

  describe "players" do
    it "has a Player 1" do
      expect(game.player_1).to eq player_1
    end
    it "has a Player 2" do
      expect(game.player_2).to eq player_2
    end
  end

  describe "moves" do
    it "asks Player 1 to make a selection" do
      game.play
      expect(player_1).to have_received(:make_move)
    end
    it "asks Player 2 to make a selection" do
      game.play
      expect(player_2).to have_received(:make_move)
    end
  end

  describe "rules" do
    it "is a draw if both players make the same move" do
      allow(player_1).to receive(:make_move).and_return :rock
      allow(player_2).to receive(:make_move).and_return :rock
      game.play
      expect(game.winner).to be nil
    end
    it "rules that rock beats scissors" do
      allow(player_1).to receive(:make_move).and_return :rock
      allow(player_2).to receive(:make_move).and_return :scissors
      game.play
      expect(game.winner).to be player_1
    end
  end
end
