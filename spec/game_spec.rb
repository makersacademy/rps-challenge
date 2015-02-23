require 'game'

describe Game do
  
  let(:game){Game.new}
  let(:thomas){double :player, weapon: :scissor, name: :thomas}
  let(:computer){double :player, weapon: :paper, name: :computer}
  let(:thomas_alias){double :player, weapon: :scissor, name: :thomas_alias}
  let(:player3){double :player, weapon: :rock, name: :player3}

  def add_players_to_game
    game.add_player(thomas)
    game.add_player(computer)
  end 

  it "should be able to add players" do
    add_players_to_game
    expect(game.players).to eq([thomas, computer])
  end

  xit "shouldn't add more then two players" do
    add_players_to_game
    expect{game.add_player(computer)}.to raise_error(RuntimeError, "Sorry, this game can only be played by two players at a time")
  end

  it "can decide, when a player has beaten the other" do
    add_players_to_game
    expect(game.beater?(thomas, computer)).to eq(thomas)
  end

  it "can decide, when a player has beaten the other" do
    game.add_player(thomas)
    game.add_player(player3)
    expect(game.beater?(thomas, player3)).to eq(player3)
  end

  it "should tell the player to try again when he has tied with his opponent" do
    game.add_player(thomas)
    game.add_player(thomas_alias)
    expect(game.beater?(thomas, thomas_alias)).to eq("Tie. Choose again")
  end

  it "should keep track of the turns" do
    game.beater?(thomas, computer)
    game.beater?(thomas, computer)
    expect(game.count[:thomas]).to eq(2)
  end

  it "should know that the geme is over after three beats" do
    game.beater?(thomas, computer)
    game.beater?(thomas, computer)
    game.beater?(thomas_alias, thomas)
    game.beater?(thomas, computer)
    expect(game).to be_over
  end

  it "shouldn't break when asked over? and no turn has happend" do
    expect(game).not_to be_over
  end

end