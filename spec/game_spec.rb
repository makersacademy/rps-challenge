require "./lib/game.rb"

describe Game do

  let(:player1) { double(:player1, name: "Simon") }
  let(:player2) { double(:player2, name: "Computer") }
  subject(:game)  { described_class.new(player1, player2) }

  describe "#initialize" do
    it "let's player play the game" do
      expect(game.player1.name).to eq "Simon"
    end
  end

  describe "#result" do
    it "confirms a win for player 1" do
      allow(game.player1).to receive(:weapon).and_return("Paper")
      allow(game.player2).to receive(:weapon).and_return("Rock")
      expect(game.result).to eq "Congratulations Simon, you win!"
    end

    it "confirms a draw" do
      allow(game.player1).to receive(:weapon).and_return("Rock")
      allow(game.player2).to receive(:weapon).and_return("Rock")
      expect(game.result).to eq "It's a draw!"
    end

    it "confirms a win for the computer" do
      allow(game.player1).to receive(:weapon).and_return("Scissors")
      allow(game.player2).to receive(:weapon).and_return("Rock")
      expect(game.result).to eq "Congratulations Computer, you win!"
    end
  end
end
