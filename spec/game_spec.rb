require "game"
require "player"

describe Game do
  subject(:game) {described_class.new(player1, player2)}
  let(:player1)  {instance_double("Player", name: "Player 1")}
  let(:player2)  {instance_double("Player", name: "Computer")}

  describe "#defaults" do
    it "initialises with a player" do
      expect(game.player1).to eq player1
    end
  end

  context "Player one wins" do
    describe "Player selects Rock and Player 2 selects Scissors" do
      it "Returns Player 1 win message" do
        allow(Kernel).to receive(:rand).and_return(2)
        expect(game.fight_with("Rock")).to eq "Rock vs Scissors - Player 1 wins the match"
      end
    end
  end

  context "Player two wins" do
    describe "Player selects Rock and Player 2 selects Paper" do
      it "Returns Player 1 win message" do
        allow(Kernel).to receive(:rand).and_return(1)
        expect(game.fight_with("Rock")).to eq "Rock vs Paper - Computer wins the match"
      end
    end
  end

  context "Game is a draw" do
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
