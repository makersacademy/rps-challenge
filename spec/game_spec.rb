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

#controller.instance_variable_set(:@some_variable, value)

  describe "#calculate" do

    context "Player moves Rock " do

      let(:player) { double :player_class, :player_move => "Rock" }
      let(:game) { described_class.new(player) }


      it "returns draw if computer move is Rock" do

        player.player_move
        game.instance_variable_set(:@game_move, "Rock")
        expect(game.calculate).to eq("It's A Draw!")
      end


      it "returns win if computer move is scissors" do
        game.instance_variable_set(:@game_move, "Scissors")
        player.player_move
        expect(game.calculate).to eq("You win!")
      end

      it "returns lose if computer move is paper" do

        game.instance_variable_set(:@game_move, "Paper")
        player.player_move
        expect(game.calculate).to eq("You lose!")
      end

    end

    context "Player moves Scissors " do

      let(:player) { double :player_class, :player_move => "Scissors" }
      let(:game) { described_class.new(player) }

      it "returns draw if computer move is Scissors" do
        game.instance_variable_set(:@game_move, "Scissors")
        player.player_move
        expect(game.calculate).to eq("It's A Draw!")
      end

      it "returns win if computer move is paper" do
        game.instance_variable_set(:@game_move, "Paper")
        player.player_move
        expect(game.calculate).to eq("You win!")
      end

      it "returns lose if computer move is rock" do
        game.instance_variable_set(:@game_move, "Rock")
        player.player_move
        expect(game.calculate).to eq("You lose!")
      end
    end

    context "Player moves Scissors " do

      let(:player) { double :player_class, :player_move => "Paper" }
      let(:game) { described_class.new(player) }

      it "returns draw if computer move is Paper" do
        game.instance_variable_set(:@game_move, "Paper")
        player.player_move
        expect(game.calculate).to eq("It's A Draw!")
      end

      it "returns win if computer move is Rock" do
        game.instance_variable_set(:@game_move, "Rock")
        player.player_move
        expect(game.calculate).to eq("You win!")
      end

      it "returns lose if computer move is scissors" do
        game.instance_variable_set(:@game_move, "Scissors")
        player.player_move
        expect(game.calculate).to eq("You lose!")
      end


    end


  end
end

# I couldn't determine the result of an instance variable in the way that I was
  # allow(player).to receive(:player_move) { "Rock" }
