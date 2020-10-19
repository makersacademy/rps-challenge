require 'game'

describe Game do 
  subject(:game) { described_class.new("ROCk") }
  describe "#initialize" do 
    it "knows how the player moved and upcases it" do
      expect(game.player_move).to eq "ROCK"
    end 
  end 

  describe "#move" do 
    it "can create a move" do
      expect(Game::CHOICE).to include(game.move)
    end
  end

  describe "#play" do
    it "game draws if both show scissors" do
      srand(5)
      game_with_scissors = described_class.new("SCISSORS")
      expect { game_with_scissors.play }.to output("You Drew\n").to_stdout
    end

    it "user wins if rock vs scissors" do
      srand(5)
      expect { game.play }.to output("You won\n").to_stdout
    end
  end

  it "game wins if paper vs scissors" do
    srand(5)
    game_with_paper = described_class.new("paper")
    expect { game_with_paper.play }.to output("You lost\n").to_stdout
  end


  
end
