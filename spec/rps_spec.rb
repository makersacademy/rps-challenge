describe RPS do

  it "calls the same instance of the class" do
    player = Player.create('Chris')
    expect(RPS.create(player)).to eq RPS.instance
  end

  it "takes the player name when creating new game" do
    player = Player.create('Chris')
    RPS.create(player)
    expect(RPS.instance.display_players).to eq player
  end

  it "evaluates opponent move after player has selected theirs" do
    player = Player.create('Chris')
    RPS.create(player)
    RPS.instance.rock
    opponent = Opponent.create_opponent
    expect(RPS.instance.opponent_move).not_to eq nil
  end
end
