describe Game do
  context "#current_player" do
    it "returns the first player if human" do
      Game.start("Player 1", "Player 2")
      expect(Game.current_player).to eq "Player 1"
    end

    it "returns the second player if the first is a robot" do
      Game.start("", "Player 2")
      expect(Game.current_player).to eq "Player 2"
    end

    it "returns the second player if the first player has moved" do
      Game.start("Player 1", "Player 2")
      Game.record_move('Rock')
      expect(Game.current_player).to eq "Player 2"
    end
  end

  context "#begin_round" do
    it "empties the result" do
      Game.start("Player 1", "Player 2")
      Game.record_move('Rock')
      Game.record_move('Rock')
      Game.begin_round
      expect(Game.see_result).to eq({})
    end
  end

  context "#next_page" do
    it "returns '/play' when a player needs to move" do
      Game.start("Player 1", "")
      expect(Game.next_page).to eq "/play"
    end

    it "returns '/result' when an outcome has been calculated" do
      Game.start("Player 1", "")
      Game.record_move('Rock')
      expect(Game.next_page).to eq "/result"
    end
  end

  context "human vs robot" do
    before(:each) { Game.start("Pat Baker", "") }

    it "stores the player's name" do
      expect(Game.see_player_1).to eq "Pat Baker"
    end

    context "#record_move" do
      it "records the player's move" do
        Game.record_move('Rock')
        expect(Game.see_result[:player_1_move]).to eq "Rock"
      end

      it "generates a move for the Robot opponent" do
        Game.record_move('Rock')
        expect(Game.see_result[:player_2_move]).not_to be nil
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

    context "determining the outcome" do
      it "identifies when both moves are the same" do
        Game.record_move('Rock')
        Game.record_move('Rock')
        expect(Game.see_result[:outcome]).to eq "No-one wins!"
      end

      it "identifies when the first move wins" do
        Game.record_move('Rock')
        Game.record_move('Scissors')
        expect(Game.see_result[:outcome]).to eq "Alex Kidd wins!"
      end

      it "identifies when the second move wins" do
        Game.record_move('Rock')
        Game.record_move('Paper')
        expect(Game.see_result[:outcome]).to eq "Stevie Dult wins!"
      end
    end
  end
end
