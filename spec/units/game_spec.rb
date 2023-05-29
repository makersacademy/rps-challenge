require 'game'

RSpec.describe Game do
  context "when the player chooses rock, and the computer choice is paper" do
    it "shows computer as the winner" do
      game = Game.new("Rock", "Paper")
      allow_any_instance_of(ComputerChoice).to receive(:get_choice).and_return("Paper")
      expect(game.game_result).to eq :lose
    end
  end

    context "when the player chooses rock, and the computer choice is scissors" do
      it "shows player as the winner" do
        game = Game.new("Rock", "Scissors")
        allow_any_instance_of(ComputerChoice).to receive(:get_choice).and_return("Scissors")
        expect(game.game_result).to eq :win
      end
    end

    context "when the player chooses paper, and the computer choice is scissors" do
      it "shows computer as the winner" do
        game = Game.new("Paper", "Scissors")
        allow_any_instance_of(ComputerChoice).to receive(:get_choice).and_return("Scissors")
        expect(game.game_result).to eq :lose
      end
    end

    context "when the player chooses paper, and the computer choice is rock" do
      it "shows player as the winner" do
        game = Game.new("Paper", "Rock")
          allow_any_instance_of(ComputerChoice).to receive(:get_choice).and_return("Rock")
        expect(game.game_result).to eq :win
      end
    end

    context "when the player chooses scissors, and the computer choice is rock" do
      it "shows computer as the winner" do
        game = Game.new("Scissors", "Rock")
    allow_any_instance_of(ComputerChoice).to receive(:get_choice).and_return("Rock")
        expect(game.game_result).to eq :lose
      end
    end

    context "when the player chooses scissors, and the computer choice is paper" do
      it "shows player as the winner" do
        game = Game.new("Scissors", "Paper")
    allow_any_instance_of(ComputerChoice).to receive(:get_choice).and_return("Paper")
        expect(game.game_result).to eq :win
      end
    end

    context "when the player chooses rock, and the computer choice is rock" do
      it "is a draw" do
        game = Game.new("Scissors", "Scissors")
    allow_any_instance_of(ComputerChoice).to receive(:get_choice).and_return("Scissors")
        expect(game.game_result).to eq :draw
      end
    end
  end



