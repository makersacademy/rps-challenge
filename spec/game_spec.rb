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

      it "returns the string 'It's a Draw!' the result is a draw" do
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

      it "returns the string 'It's a Draw!' the result is a draw" do
        rpsls.get_move(2)
        rpsls.get_move(2)
        expect(rpsls.match).to eq("It's a Draw!")
      end
    end
  end

  describe "#vs_computer?" do
    let(:rps_computer) { Game.new("Gordon", "", 3) } 

    it "returns true if player2 is a 'computer' player" do
      expect(rps_computer.vs_computer?).to be(true)
    end
  end

  describe "#get_weapon" do
    let(:rps) { Game.new("Gordon", "Caroline", 3) }

    it "it returns a string of the weapon name from the given index" do
      expect(rps.get_weapon(2)).to eq("Paper")
    end
  end

  describe "#get_move" do
    let(:rps) { Game.new("Gordon", "Caroline", 3) }
    let(:rps_computer) { Game.new("Gordon", "", 3) }

    it "gets the current players move and cycle to the next player" do
      rps.get_move(2)
      expect(rps.player1.move).to eq(2)
      expect(rps.current_player).to eq(rps.player2)
    end

    it "gets the current players move and doesn't cycle when the opponent is a computer" do
      rps_computer.get_move(2)
      expect(rps_computer.player1.move).to eq(2)
      expect(rps_computer.current_player).to eq(rps_computer.player1)
    end
  end
end
