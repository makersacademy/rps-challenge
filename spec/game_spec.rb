require "game"

describe Game do

  let(:game) { described_class.new("Derek") }

  describe "#initialize" do
    it "should store a players name" do
      expect(game.player).to eq "Derek"
    end
  end

  describe "#choice" do
    it "should return a weapon" do
      expect(Game::WEAPONS).to include(game.choice)
    end
  end

  describe "#winnner" do
    let(:win) { "win" }
    let(:lose) { "lose" }
    let(:draw) { "draw" }

    it "should return draw when paper and paper is given" do
      expect(game.winner("paper", "paper")).to eq draw
    end
    it "should return draw when paper and paper is given" do
      expect(game.winner("scissors", "scissors")).to eq draw
    end
    it "should return draw when scissors and scissors is given" do
      expect(game.winner("scissors", "scissors")).to eq draw
    end
    it "should return Win when rock and scissors is given" do
      expect(game.winner("rock", "scissors")).to eq win
    end
    it "should return Lose when scissors and rock is given" do
      expect(game.winner("scissors", "rock")).to eq lose
    end
    it "should return win when paper and rock is given" do
      expect(game.winner("paper", "rock")).to eq win
    end
    it "should return lose when rock and paper is given" do
      expect(game.winner("rock", "paper")).to eq lose
    end
    it "should return scissors when paper and scissors is given" do
      expect(game.winner("paper", "scissors")).to eq lose
    end
    it "should return scissors when scissors and paper is given" do
      expect(game.winner("scissors", "paper")).to eq win
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
