require 'game'

describe Game do

  let(:player1) { double :Player }
  subject(:game) { described_class.new(player1) }

  context "#initialize" do
    it "should store players in an Array" do
      expect(game.players).to eq [player1]
    end
  end

  context "#store_move" do
    it "calls Player#store_move" do
      expect(player1).to receive(:store_move)
      game.store_move("Rock")
    end
  end
end
