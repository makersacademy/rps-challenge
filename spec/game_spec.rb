describe Game do 
  subject(:game) { Game.new("Ollie") }
  it 'Returns player name' do 
    expect(game.player_name).to eq "Ollie"
  end
end
