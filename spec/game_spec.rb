describe Game do
  it "stores the player's name" do
    Game.start "Pat Baker"
    expect(Game.see_player_name).to eq "Pat Baker"
  end

  context "#play_a_round" do
    it "generates a move for the Robot opponent" do
      Game.play_a_round('Rock')
      expect(Game.see_result[:robot_move]).not_to be nil
    end
  end
end
