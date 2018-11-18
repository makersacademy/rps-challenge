describe Game do
  context "human vs robot" do
    before(:each) { Game.start "Pat Baker", "" }

    it "stores the player's name" do
      expect(Game.see_player_1).to eq "Pat Baker"
    end

    context "#record_move" do
      it "generates a move for the Robot opponent" do
        Game.record_move('Rock')
        expect(Game.see_result[:player_2_move]).not_to be nil
      end
    end

    context '#outcome' do
      it "identifies when both moves are the same" do
        expect(Game.outcome 'Rock', 'Rock').to eq "No-one wins!"
      end

      it "identifies when the first move wins" do
        expect(Game.outcome 'Rock', 'Scissors').to eq "Pat Baker wins!"
      end

      it "identifies when the second move wins" do
        expect(Game.outcome 'Rock', 'Paper').to eq "The Robot wins!"
      end
    end
  end

  context "two robot players" do
    before(:each) { Game.start("", "") }

    it "has two players called The Robot" do
      expect(Game.see_player_1).to eq "The Robot"
      expect(Game.see_player_2).to eq "The Robot"
    end

    it "calculates the result without requesting a move" do
      expect(Game.see_result[:player_1_move]).not_to be nil
      expect(Game.see_result[:player_2_move]).not_to be nil
      expect(Game.see_result[:outcome]).not_to be nil
    end
  end

  context "human vs human" do
    before(:each) { Game.start("Alex Kidd", "Stevie Dult") }

    it "has both players" do
      expect(Game.see_player_1).to eq "Alex Kidd"
      expect(Game.see_player_2).to eq "Stevie Dult"
    end

    context "#record_move" do
      it "registers player 1's move" do
        Game.record_move('Rock')
        expect(Game.see_result[:player_1_move]).to eq "Rock"
      end

      it "registers player 2's move after player 1's" do
        Game.record_move('Rock')
        Game.record_move('Paper')
        expect(Game.see_result[:player_2_move]).to eq "Paper"
      end
    end
  end
end
