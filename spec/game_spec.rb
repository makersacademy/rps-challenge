require 'game'

describe Game do

  let(:player1) { double :Player, move: :rock }
  let(:ai_player) { double :AI, move: :scissors }
  subject(:game) { described_class.new(player1, ai_player) }

  context "#initialize" do
    it "should store players in an Array" do
      expect(game.players).to eq [player1, ai_player]
    end
  end

  context "#store_move" do
    it "calls Player#store_move" do
      expect(player1).to receive(:store_move)
      game.store_move("Rock")
    end
  end

  context "#who_won" do
    it "calculates who won" do
      expect(game.who_won).to eq player1
    end
  end
end
