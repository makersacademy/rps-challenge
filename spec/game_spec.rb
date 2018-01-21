require "game"

describe Game do
  let(:player) { double :player }
  let(:game) { described_class.new(player) }

  describe "#initialize" do
    it "should store a player" do
      expect(game.player_1).to eq player
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
  let(:player) { double :player }
  subject(:game_class) { described_class }

  it "should create a new game" do
    game_class.create(player)
    expect(game_class.current).to be_a(Game)
  end
end
