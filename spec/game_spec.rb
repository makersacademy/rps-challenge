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

  it "can decide, when a player has beaten the other" do
    add_players_to_game
    expect(game.beater?).to eq(thomas)
  end

  it "can decide, when a player has beaten the other" do
    game.add_player(thomas)
    game.add_player(player3)
    expect(game.beater?).to eq(player3)
  end

  it "tells the player to try again when he has tied with his opponent" do
    game.add_player(thomas)
    game.add_player(thomas_alias)
    expect(game.beater?).to eq(:tie)
  end

  it "keeps track of the turns" do
    add_players_to_game
    game.beater?
    add_players_to_game
    game.beater?
    expect(game.count(:thomas)).to eq(2)
  end

  it "knows that the game is over after three beats" do
    add_players_to_game
    game.beater?
    add_players_to_game
    game.beater?
    add_players_to_game
    expect(game).to be_over
  end

  it "when there are games left, game shouldn't be over" do
    add_players_to_game
    game.beater?
    expect(game).not_to be_over
  end

  it "can tell who is the overall winner" do
    game.add_player(thomas)
    game.add_player(player3)
    game.beater?
    game.add_player(thomas)
    game.add_player(player3)
    game.beater?
    expect(game.winner).to eq(player3.name)
  end


end