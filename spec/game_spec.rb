require "game"
require "player"


describe Game do

  subject(:game) { described_class.new }

  describe "#match" do
    it "returns a draw" do
      expect(game.match("Rock", "Rock")).to eq "It's a draw"
    end

    it "returns player wins" do
      expect(game.match("Rock", "Scissors")).to eq "You win"

    end
  end

end
