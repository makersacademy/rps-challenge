require 'game'

describe Game do
  
  let(:game){Game.new}
  let(:thomas){double :player, weapon: :scisor}
  let(:computer){double :player, weapon: :paper}
  let(:thomas_alias){double :player, weapon: :scisor}
  let(:auto_player){double :player, weapon: :haha}

  def add_players_to_game
    game.add_player(thomas)
    game.add_player(computer)
  end 

  it "should be able to add players" do
    add_players_to_game
    expect(game.players).to eq([thomas, computer])
  end

  it "shouldn't add more then two players" do
    add_players_to_game
    expect{game.add_player(computer)}.to raise_error(RuntimeError, "Sorry, this game can only be played by two players at a time")
  end

  it "can decide, when a player has beaten the other" do
    add_players_to_game
    expect(game.beater?(thomas, computer)).to eq(thomas)
  end

  it "should tell the player to try again when he has tied with his opponent" do
    game.add_player(thomas)
    game.add_player(thomas_alias)
    expect(game.beater?(thomas, thomas_alias)).to eq("Tie. Choose again")
  end

  it "should be able to choose weapon randomly" do
    game.add_player(auto_player)
    allow(auto_player).to receive(:random_weapon).and_return(:scisor)
    expect(auto_player.random_weapon).to eq(:scisor)
  end

end