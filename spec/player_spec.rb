require 'player'

describe 'Player' do 
  it 'returns the name of the player' do 
    player_name = "Josh"
    player1 = Player.new(player_name)
    expect(player1.name).to eq player_name
  end
end
