require 'game'

describe Game do
  subject(:game) { described_class.new }
  context "begins a RPS game" do
    it "#new" do
      expect { game }.not_to raise_error
    end

    it "#rock" do
      expect(game.rock).to eq "Rock"
    end
    it "#paper" do
      expect(game.paper).to eq "Paper"
    end
    it "#scissors" do
      expect(game.scissors).to eq "Scissors"
    end

    it "#computer_move" do
      srand(3)
      expect(game.computer_move).to eq "Scissors"
    end

    context "who is the winner" do 
      it "computer wins" do
        srand(1)
        move = game.rock
        computer = game.computer_move
        expect(game.decision(move, computer)).to eq "Computer is the winner!"
      end
      
      it "player wins" do
        srand(2)
        move = game.paper
        computer = game.computer_move
        expect(game.decision(move, computer)).to eq "You are the winner!"
      end
      
      it "is a tie" do
        srand(12345)
        move = game.scissors
        computer = game.computer_move
        expect(game.decision(move, computer)).to eq "It's a tie!"
      end
    end
  end
end
