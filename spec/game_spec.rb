require 'game.rb'

describe Game do
  subject(:game) { described_class.new }
  let(:player1) { double :player, name: "Alex" }
  let(:player2) { double :player, name: "Computer" }

  describe '#rps' do

    it "returns it's a draw when to choices are the same" do
      allow(player1).to receive(:choice).and_return("Rock")
      allow(player2).to receive(:choice).and_return("Rock")
      expect(game.rps(player1, player2)).to eq("It's a draw")
    end

    it "returns Player1 wins according to the WINNING_MOVES" do
      allow(player1).to receive(:choice).and_return("Rock")
      allow(player2).to receive(:choice).and_return("Scissors")
      expect(game.rps(player1, player2)).to eq("Alex wins")
    end

    it "returns Player2 wins according to the WINNING_MOVES" do
      allow(player1).to receive(:choice).and_return("Rock")
      allow(player2).to receive(:choice).and_return("Paper")
      expect(game.rps(player1, player2)).to eq("Computer wins")
    end

  end
end
