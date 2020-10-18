require 'game'

describe Game do
  subject(:game) { described_class.new("rock") }

  describe "#initialize" do
    it "knows how the player moved and upcases it" do
      expect(game.player_move).to eq "ROCK"
    end
  end

  describe "#play" do
    it "shows draw if both show scissors" do
      srand(5)
      game_with_scissors = described_class.new("scissors")
      expect(game_with_scissors.play).to eq("Draw")
    end

    it "user wins if rock vs scissors" do
      srand(5)
      expect(game.play).to eq("Win")
    end

    it "game wins if paper vs scissors" do
      srand(5)
      game_with_paper = described_class.new("paper")
      expect(game_with_paper.play).to eq("Loss")
    end
  end
end
