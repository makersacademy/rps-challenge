require 'game'

describe Game do
  let(:player) { double :player, :score => 1 }
  let(:player2) { double :player2, :score => 0 }
  subject(:game) { described_class.new(player, player2) }

  describe "#return_player" do
    it "returns a player" do
      expect(game.return_player(1)).to eq player
    end
  end

  describe "#initialize" do
    context "start game" do
      it "returns good luck at start of game" do
        expect(game.message).to eq "Good Luck!"
      end
    end
  end
  
  describe "#move" do
    context "player takes a move - Rock" do
      it "returns good luck at start of game" do
        expect(game.message).to eq "Good Luck!"
      end
    end
  end

end
