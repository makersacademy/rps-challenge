require "game"
require "player"
require "computer"

describe Game do
  subject(:game) {Game.new(player, computer)}
  subject(:player) {double :player}
  subject(:computer) {double :computer}

  describe "#initialize" do
    it "accepts a player" do
      expect(game.player).to eq player
    end
    it "accepts the computer" do
      expect(game.computer).to eq computer
    end
  end

  describe "#outcome" do
    it "processes the two weapons used" do
      expect(game).to respond_to(:outcome).with(2).argument
    end

    context "Draw" do
      it "draws if the two weapons are the same" do
        expect(game.outcome("Rock", "Rock")).to eq "Draws!"
      end
    end

    context "User wins" do
      it "lets rock beat scissors" do
        expect(game.outcome("Rock", "Scissors")).to eq "Wins!"
      end
      it "lets paper beat rock" do
        expect(game.outcome("Paper", "Rock")).to eq "Wins!"
      end
    end

    context "User loses" do
      it "lets scissors beat paper" do
        expect(game.outcome("Paper", "Scissors")).to eq "Loses!"
      end
    end
  
  end
end
