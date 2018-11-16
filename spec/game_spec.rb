describe Game do
  before(:each) { Game.start "Pat Baker" }

  it "stores the player's name" do
    expect(Game.see_player_name).to eq "Pat Baker"
  end

  context "#play_a_round" do
    it "generates a move for the Robot opponent" do
      Game.play_a_round('Rock')
      expect(Game.see_result[:opponent_move]).not_to be nil
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
