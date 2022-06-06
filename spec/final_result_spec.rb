require 'final_result' 
require 'player'
require 'computer'

describe FinalResult do
  subject (:final_result) { FinalResult.new }

  # Player = Rock
  describe "when the player plays rock" do
    subject (:player) { Player.new("Rock") }

    context "and has won the game" do
      it "it returns winning message" do 
        comp = Computer.new(["Rock", "Paper", "Scissors"])
        allow(comp).to receive(:option).and_return("Scissors")
        final_result.calculate(player.option, comp.option)
        expect(final_result.winner).to eq "Congratulations! You won, you beat the computer!"
      end 
    end

    context "and has lost the game" do
      it "it returns losing message" do 
        comp = Computer.new(["Rock", "Paper", "Scissors"])
        allow(comp).to receive(:option).and_return("Paper")
        final_result.calculate(player.option, comp.option)
        expect(final_result.winner).to eq "Oh no, you lost! Better luck next time!"
      end 
    end

    context "and has tied with the computer" do
      it "it returns it's a draw message" do 
        comp = Computer.new(["Rock", "Paper", "Scissors"])
        allow(comp).to receive(:option).and_return("Rock")
        final_result.calculate(player.option, comp.option)
        expect(final_result.winner).to eq "Oh well, it's a draw!"
      end 
    end
  end

# Player = Paper
  describe "when the player plays paper" do
    subject (:player) { Player.new("Paper") }

    context "and has won the game" do
      it "it returns winning message" do 
        comp = Computer.new(["Rock", "Paper", "Scissors"])
        allow(comp).to receive(:option).and_return("Rock")
        final_result.calculate(player.option, comp.option)
        expect(final_result.winner).to eq "Congratulations! You won, you beat the computer!"
      end 
    end

    context "and has lost the game" do
      it "it returns losing message" do 
        comp = Computer.new(["Rock", "Paper", "Scissors"])
        allow(comp).to receive(:option).and_return("Scissors")
        final_result.calculate(player.option, comp.option)
        expect(final_result.winner).to eq "Oh no, you lost! Better luck next time!"
      end 
    end

    context "and has tied with the computer" do
      it "it returns it's a draw message" do 
        comp = Computer.new(["Rock", "Paper", "Scissors"])
        allow(comp).to receive(:option).and_return("Paper")
        final_result.calculate(player.option, comp.option)
        expect(final_result.winner).to eq "Oh well, it's a draw!"
      end 
    end
  end

  # Player = Scissors
  describe "when the player plays paper" do
    subject (:player) { Player.new("Scissors") }

    context "and has won the game" do
      it "it returns winning message" do 
        comp = Computer.new(["Rock", "Paper", "Scissors"])
        allow(comp).to receive(:option).and_return("Paper")
        final_result.calculate(player.option, comp.option)
        expect(final_result.winner).to eq "Congratulations! You won, you beat the computer!"
      end 
    end

    context "and has lost the game" do
      it "it returns losing message" do 
        comp = Computer.new(["Rock", "Paper", "Scissors"])
        allow(comp).to receive(:option).and_return("Rock")
        final_result.calculate(player.option, comp.option)
        expect(final_result.winner).to eq "Oh no, you lost! Better luck next time!"
      end 
    end

    context "and has tied with the computer" do
      it "it returns it's a draw message" do 
        comp = Computer.new(["Rock", "Paper", "Scissors"])
        allow(comp).to receive(:option).and_return("Scissors")
        final_result.calculate(player.option, comp.option)
        expect(final_result.winner).to eq "Oh well, it's a draw!"
      end 
    end
  end
end
