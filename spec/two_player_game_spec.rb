require 'two_player_game'

describe 'TwoPlayerGame' do 
  let(:game){TwoPlayerGame.new}
  let(:player_one){double :player, :selection=>:rock}
  let(:player_two){double :player, :selection=>:scissors}

  def set_players
    game.player_one=player_one
    game.player_two=player_two
  end  

  it 'has two players on initialization' do 
    expect(game.player_one).to eq(nil)
    expect(game.player_two).to eq(nil)
  end  

  it 'can tell when someone wins' do
    set_players
    expect(game.determine_winner).to be(player_one)
  end  

end  