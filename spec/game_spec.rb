require "./lib/game"
require "pry"
require "./lib/player"

describe Game do

  let(:player) { double :player_class }
  let(:game) { described_class.new(player) }

  describe "#move" do
    it "returns a game move" do
      expect(game.move).to eq("Rock").or eq("Paper"). or eq("Scissors")
    end
  end

  describe "#calculate" do

    context "Player moves Rock " do

      let(:player) { double :player_class, :player_move => "Rock" }
      let(:game) { described_class.new(player) }

      it "returns draw if computer move is Rock" do
        allow(game).to receive(:move) { "Rock" }
        player.player_move
        expect(game.calculate).to eq("It's A Draw!")
      end

      it "returns win if computer move is scissors" do
        allow(game).to receive(:move) { "Scissors" }
        player.player_move
        expect(game.calculate).to eq("You win!")
      end

      it "returns lose if computer move is paper" do
        allow(game).to receive(:move) { "Paper" }
        player.player_move
        expect(game.calculate).to eq("You lose!")
      end

    end

    context "Player moves Scissors " do

      let(:player) { double :player_class, :player_move => "Scissors" }
      let(:game) { described_class.new(player) }

      it "returns draw if computer move is Scissors" do
        allow(game).to receive(:move) { "Scissors" }
        player.player_move
        expect(game.calculate).to eq("It's A Draw!")
      end

      it "returns win if computer move is paper" do
        allow(game).to receive(:move) { "Paper" }
        player.player_move
        expect(game.calculate).to eq("You win!")
      end

      it "returns lose if computer move is rock" do
        allow(game).to receive(:move) { "Rock" }
        player.player_move
        expect(game.calculate).to eq("You lose!")
      end
    end

    context "Player moves Scissors " do

      let(:player) { double :player_class, :player_move => "Paper" }
      let(:game) { described_class.new(player) }

      it "returns draw if computer move is Paper" do
        allow(game).to receive(:move) { "Paper" }
        player.player_move
        expect(game.calculate).to eq("It's A Draw!")
      end

      it "returns win if computer move is Rock" do
        allow(game).to receive(:move) { "Rock" }
        player.player_move
        expect(game.calculate).to eq("You win!")
      end

      it "returns lose if computer move is scissors" do
        allow(game).to receive(:move) { "Scissors" }
        player.player_move
        expect(game.calculate).to eq("You lose!")
      end


    end


  end
end

# I couldn't determine the result of an instance variable in the way that I was
  # allow(player).to receive(:player_move) { "Rock" }
