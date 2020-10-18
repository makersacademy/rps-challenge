require 'game'

describe Game do
  subject(:game) { described_class.new("rock") }

  describe "#initialize" do
    it "knows how the player moved" do
      expect(game.player_move).to eq "rock"
    end
  end

  describe "#move" do 
    it "can create a move" do
      expect(Game::OUTCOMES).to include(game.move)
    end
  end

  describe "#play" do
    it "shows draw if both show scissors" do
      srand(5)
      game_with_scissors = described_class.new("scissors")
      expect { game_with_scissors.play }.to output("Draw!\n").to_stdout
    end

    it "user wins if rock vs scissors" do
      srand(5)
      expect { game.play }.to output("You win!\n").to_stdout
    end
  end
end
