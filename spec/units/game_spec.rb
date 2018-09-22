require 'game'

describe Game do
  subject(:game) { described_class.new }
  context "begins a RPS game" do
    it "#new" do
      expect { game }.not_to raise_error
    end

    it "#move" do
      srand(2) # creates a seed for a random sequence -- begins with Rock
      expect(game.move).to eq "Rock"
    end

    it "#computer_move" do
      srand(3)
      expect(game.computer_move).to eq "Scissors"
    end

    context "who is the winner" do 
      it "computer wins" do
        srand(2)
        player = game.move
        computer =  game.computer_move
        expect(game.decision(player, computer)).to eq "Computer wins!"
      end
      
      it "player wins" do
        srand(1)
        player = game.move
        computer = game.computer_move
        expect(game.decision(player, computer)).to eq "Player wins!"
      end
      
      it "is a tie" do
        srand(4)
        player = game.move
        computer =  game.computer_move
        expect(game.decision(player, computer)).to eq "It's a tie!"
      end
    end
  end
end