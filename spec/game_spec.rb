require "game"

describe Game do
  let(:player) { double :player }
  let(:computer) { double :player }
  let(:game) { described_class.new(player, computer) }

  def set_choice(a, b)
    allow(player).to receive(:choice).and_return(a)
    allow(computer).to receive(:choice).and_return(b)
  end

  describe "#initialize" do
    it "should store player_1" do
      expect(game.player_1).to eq player
    end

    it "should store computer player" do
      expect(game.player_2).to eq computer
    end
  end

  describe "#winnner" do
    let(:win) { "win" }
    let(:lose) { "lose" }
    let(:draw) { "draw" }

    it "should return draw when paper and paper is given" do
      set_choice("paper", "paper")
      expect(game.winner).to eq draw
    end
    it "should return lose when rock and paper is given" do
      set_choice("rock", "paper")
      expect(game.winner).to eq lose
    end
    it "should return scissors when paper and scissors is given" do
      set_choice("paper", "scissors")
      expect(game.winner).to eq lose
    end
    it "should return scissors when scissors and paper is given" do
      set_choice("scissors", "paper")
      expect(game.winner).to eq win
    end

    it "should return draw when rock and rock is given" do
      set_choice("rock", "rock")
      expect(game.winner).to eq draw
    end
    it "should return draw when scissors and scissors is given" do
      set_choice("scissors", "scissors")
      expect(game.winner).to eq draw
    end
    it "should return Win when rock and scissors is given" do
      set_choice("rock", "scissors")
      expect(game.winner).to eq win
    end
    it "should return Lose when scissors and rock is given" do
      set_choice("scissors", "rock")
      expect(game.winner).to eq lose
    end
    it "should return win when paper and rock is given" do
      set_choice("paper", "rock")
      expect(game.winner).to eq win
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
