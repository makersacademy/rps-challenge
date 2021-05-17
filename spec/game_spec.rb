require "game"

describe Game do
  subject(:game) { described_class.new(player) }
    let(:player) { double :player }
  
  describe "#player" do
    it "accepts a player instance" do
      expect(game.player).to eq player
    end
  end

  describe "#comp_choice" do
    it "keeps the computers choice of either rock, paper, or scissors" do
      srand(4)
      expect(game.comp_choice).to eq "Scissors"
    end
  end

  describe "#outcome" do
    let(:player) { double(:player, name: "John", move: "Rock") }
    it "returns player win" do
      srand(5)
      expect(game.outcome).to eq game.play_win
    end

    it "returns computer win" do
      srand(1)
      expect(game.outcome).to eq game.comp_win
    end

    it "returns draw" do
      srand(2)
      p game.comp_move
      expect(game.outcome).to eq game.draw
    end
  end
end