require "game"

describe Game do
  # the game will choose a random option
  # the game is a game of r p s
  subject(:game) { described_class.new(marketeer) }
  let(:marketeer) { Player.new("Frankie", "rock") }

  # it "should accept a human player" do
  #   expect(subject.players).to eq marketeer
  # end

    describe "#marketeer_move" do
      it "should retrieve the marketeer's move" do
        expect(subject.marketeer_move).to eq "rock"
      end
    end

    describe "#computer_move" do
      it "should generate a random move" do
        ["rock", "paper", "scissors"].should include subject.computer_move
      end
    end

    describe "#run" do
      it "should return that Frankie won" do
        p @marketeer_move
        p "printing marketeer_move before assignment"
        @marketeer_move = "rock"
        p @marketeer_move
        p "after assignment"
        p @computer_move
        p "@computer_move before assignment"
        @computer_move = "scissors"
        p @computer_move
        p "@comp move after"
        p game.run
        p "game run above"
        expect(game.run).to eq "Frankie wins"
      end

    end
end
