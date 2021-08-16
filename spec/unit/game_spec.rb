require_relative "../../lib/game"

describe Game do
  describe "#initialize" do
    it "should initialize with player choice and computer choice" do
      expect(Game.new("Rock", "Paper")).to have_attributes(:player_choice => "Rock", :computer_choice => "Paper")
    end
  end

  describe "#calculate_winner" do
    context "player choice and computer choice are the same" do
      it "should say the result is a draw" do
        expect(Game.new("Rock", "Rock").calculate_winner).to eq("It's a Draw!")
      end

      it "should say the result is a draw" do
        expect(Game.new("Paper", "Paper").calculate_winner).to eq("It's a Draw!")
      end

      it "should say the result is a draw" do
        expect(Game.new("Scissors", "Scissors").calculate_winner).to eq("It's a Draw!")
      end
    end

    context "player and computer choose differently" do
      it "should determine who wins at rock, paper, scissors" do
        expect(Game.new("Rock", "Paper").calculate_winner).to eq("The computer won!")
      end

      it "should determine who wins at rock, paper, scissors" do
        expect(Game.new("Rock", "Scissors").calculate_winner).to eq("You won!")
      end

      it "should determine who wins at rock, paper, scissors" do
        expect(Game.new("Scissors", "Paper").calculate_winner).to eq("You won!")
      end
    end
  end
end
