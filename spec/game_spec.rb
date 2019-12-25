require 'game'

describe Game do

  subject(:game) {Game.new("Jimmy")}

  describe "#outcome" do
    it "returns a draw if both the same" do
      expect(game.outcome("Scissors", "Scissors")).to eq "It's a draw!"
    end

    it "returns a win for the player" do
      expect(game.outcome("Scissors", "Paper")).to eq "Jimmy wins!!!"
    end

    it "returns a win for the bot" do
      expect(game.outcome("Paper", "Scissors")).to eq "Botman wins!!!"
    end
  end

end
