require "game"

describe Game do

  let(:game) { described_class.new("Derek") }

  describe "#initialize" do
    it "should store a players name" do
      expect(game.player).to eq "Derek"
    end
  end

  # describe "#WEAPONS" do
  #   it "should include rock" do
  #     expect(Game::WEAPONS).to include("Rock")
  #   end
  #   it "should include rock" do
  #     expect(Game::WEAPONS).to include("Paper")
  #   end
  #   it "should include rock" do
  #     expect(Game::WEAPONS).to include("Rock")
  #   end
  # end
  describe "#winnner" do
    it "should return draw when paper and paper is given" do
      expect(game.winner("paper", "paper")).to eq "Draw"
    end
    it "should return draw when paper and paper is given" do
      expect(game.winner("scissors", "scissors")).to eq "Draw"
    end
    it "should return draw when scissors and scissors is given" do
      expect(game.winner("scissors", "scissors")).to eq "Draw"
    end
    it "should return rock when rock and scissors is given" do
      expect(game.winner("rock", "scissors")).to eq "rock"
    end
    it "should return rock when scissors and rock is given" do
      expect(game.winner("scissors", "rock")).to eq "rock"
    end
    it "should return paper when paper and rock is given" do
      expect(game.winner("paper", "rock")).to eq "paper"
    end
    it "should return rock when rock and paper is given" do
      expect(game.winner("rock", "paper")).to eq "paper"
    end
    it "should return scissors when paper and scissors is given" do
      expect(game.winner("paper", "scissors")).to eq "scissors"
    end
    it "should return scissors when scissors and paper is given" do
      expect(game.winner("paper", "scissors")).to eq "scissors"
    end
  end
end

describe Game do

  subject(:game_class) { described_class }

  describe "#create" do
    it "should create a new game" do
      game_class.create("Derek")
      expect(game_class.current).to be_a(Game)
    end

    it "should have a game with player name Derek" do
      expect(game_class.current.player).to eq "Derek"
    end
  end

end
