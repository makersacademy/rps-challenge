require "game"
require "player"

describe Game do
  subject(:game) {described_class.new(player1, player2)}
  let(:player1)  {instance_double("Player", name: "Player 1", score: 0)}
  let(:player2)  {instance_double("Player", name: "Computer", score: 0)}

  describe "#defaults" do
    it "initialises with a player 1" do
      expect(game.player1).to eq player1
    end

    it "initialises with a player 2" do
      expect(game.player2).to eq player2
    end
  end

  context "Player one wins" do
    before do
      allow(game).to receive(:update_score).and_return 1
    end

    describe "Player selects Rock and Player 2 selects Scissors" do
      it "Returns Player 1 win message" do
        allow(Kernel).to receive(:rand).and_return(2)
        expect(game.fight_with("Rock")).to eq "Rock vs Scissors - Player 1 wins the match"
      end
    end

    describe "Player selects Rock and Player 2 selects Scissors" do
      it "Adds 1 point to player 1" do
        allow(Kernel).to receive(:rand).and_return(2)
        allow(player1).to receive(:score).and_return(1)
        expect(game.player1.score).to eq 1
      end
    end
  end

  context "Player two wins" do
    before do
      allow(game).to receive(:update_score).and_return 0
    end

    describe "Player selects Rock and Player 2 selects Paper" do
      it "Returns Player 1 win message" do
        allow(Kernel).to receive(:rand).and_return(1)
        expect(game.fight_with("Rock")).to eq "Rock vs Paper - Computer wins the match"
      end
    end

    describe "Player selects Rock and Player 2 selects Paper" do
      it "Adds 1 point to player 2" do
        allow(Kernel).to receive(:rand).and_return(1)
        allow(player2).to receive(:score).and_return(1)
        expect(game.player2.score).to eq 1
      end
    end
  end

  context "Game is a draw" do
    before do
      allow(game).to receive(:update_score).and_return 0
    end

    describe "Player selects Rock and Player 2 selects Rock" do
      it "Returns Player 1 win message" do
        allow(Kernel).to receive(:rand).and_return(0)
        expect(game.fight_with("Rock")).to eq "Rock vs Rock - Game is a draw!"
      end
    end
  end
end

describe "Game Instance" do
  let(:player1)  {instance_double("Player", name: "Player1")}
  let(:player2)  {instance_double("Player", name: "Player2")}

  it "Creates a new instance of a game" do
    game = Game.create(player1, player2)
    expect(Game.instance).to eq game
  end
end
