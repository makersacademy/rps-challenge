require "game"

describe Game do
  # the game will choose a random option
  # the game is a game of r p s
  # subject(:game) { described_class.new(marketeer) }
  let(:marketeer) { Player.new("Frankie", "rock") }
  # subject(:game) { described_class.new(marketeer) }
  before do
    # let(:marketeer) { Player.new("Frankie", "rock") }
    @game = Game.new(marketeer)
  end

  # allow(:game).to_respond_to(computer_move)

  # it "should accept a human player" do
  #   expect(subject.players).to eq marketeer
  # end

    describe "#marketeer_move" do
      it "should retrieve the marketeer's move" do
        expect(@game.marketeer_move).to eq "rock"
      end
    end

    describe "#computer_move" do
      it "should generate a random move" do
        ["rock", "paper", "scissors"].should include @game.computer_move
      end
    end

    context "computer move is scissors" do
      before do
        allow(@game).to receive(:computer_move).and_return("scissors")
      end
      describe "#run" do
        it "should return that Frankie won" do
          # p @marketeer_move
          # p "printing marketeer_move before assignment"
          # @marketeer_move = "rock"
          # p @marketeer_move
          # p "after assignment"
          p $marketeer.move
          p "above is $marketeer.move"
          p @computer_move
          p "@computer_move before assignment"
          # allow(game).to_respond_to(computer_move).and_return("scissors")
          # allow(game.computer_move).to_eq("scissors")
          # p .computer_move
          # p "printing comp move method"
          # @computer_move = "scissors"
          # p @computer_move
          # p "@comp move after"
          p @game.run
          p "game run above"
          p @game.computer_move
          p "c move above"
          expect(@game.run).to eq "Frankie wins"
        end
      end
    end
end
