require 'game'

describe Game do
  describe "#self.newgame" do
    it "creates a class instance variable of Game" do
      Game.new_game("Gordon", "Caroline", 3)
      expect(Game.current_game).to be_a(Game)
    end
  end

  describe "#match" do
    let(:rpsls) { Game.new("Gordon", "Caroline", 5) }    
    let(:rps) { Game.new("Gordon", "Caroline", 3) } 

    context "for rps" do
      it "determines the winner in a game of Rock Paper Scissors " do
        rps.get_move(1)
        rps.get_move(2)
        expect { rps.match }.to change { rps.player2.score }.by(1)
      end

      it "returns true if the result of a game of rock paper scissors is a draw" do
        rps.get_move(2)
        rps.get_move(2)
        expect(rps.match).to eq("It's a Draw!")
      end
    end

    context "for rpsls" do
      it "determines the winner in a game of Rock Paper Scissors Lizard Spock" do
        rpsls.get_move(2)
        rpsls.get_move(4)
        expect { rpsls.match }.to change { rpsls.player1.score }.by(1)
      end 
    end
  end
end
