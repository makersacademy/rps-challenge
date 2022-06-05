require 'game'

RSpec.describe Game do
  context "when the player chooses rock, and the computer choice is paper" do
    it "shows computer as the winner" do
      game = Game.new("Rock", "Paper")
      expect(game.game_result).to eq "Lose"
    end
  end

    context "when the player chooses rock, and the computer choice is scissors" do
      it "shows player as the winner" do
        game = Game.new("Rock", "Scissors")
        expect(game.game_result).to eq "Win"
      end
    end

    context "when the player chooses paper, and the computer choice is scissors" do
      it "shows computer as the winner" do
        game = Game.new("Paper", "Scissors")
        expect(game.game_result).to eq "Lose"
      end
    end

    context "when the player chooses paper, and the computer choice is rock" do
      it "shows player as the winner" do
        game = Game.new("Paper", "Rock")
        expect(game.game_result).to eq "Win"
      end
    end

    context "when the player chooses scissors, and the computer choice is rock" do
      it "shows computer as the winner" do
        game = Game.new("Scissors", "Rock")
        expect(game.game_result).to eq "Lose"
      end
    end

    context "when the player chooses scissors, and the computer choice is paper" do
      it "shows player as the winner" do
        game = Game.new("Scissors", "Paper")
        expect(game.game_result).to eq "Win"
      end
    end

    context "when the player chooses rock, and the computer choice is rock" do
      it "is a draw" do
        game = Game.new("Scissors", "Scissors")
        expect(game.game_result).to eq "Draw"
      end
    end
  end



