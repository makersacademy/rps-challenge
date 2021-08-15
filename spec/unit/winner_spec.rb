require_relative "../../lib/winner"

describe Winner do
  let(:subject) { Winner.new("Rock", "Paper") }

  describe "#initialize" do
    it "should initialize with player choice and computer choice" do
      expect(subject).to have_attributes(:player_choice => "Rock", :computer_choice => "Paper")
    end
  end

  describe "#winner" do
    context "player choice is Rock, computer choice is Rock" do
      it "should be determine who wins at rock, paper, scissors" do
        expect(Winner.new("Rock", "Rock").calculate_winner).to eq("It's a Draw!")
      end
    end

    context "player choice is Rock, computer choice is Paper" do
      it "should be determine who wins at rock, paper, scissors" do
        expect(subject.calculate_winner).to eq("The computer won!")
      end
    end

    context "player choice is Rock, computer choice is Scissors" do
      it "should be determine who wins at rock, paper, scissors" do
        expect(Winner.new("Rock", "Scissors").calculate_winner).to eq("You won!")
      end
    end
  end
end
