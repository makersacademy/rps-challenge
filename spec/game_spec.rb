describe Game do 
  subject(:game) { Game.new("Ollie") }
  # let(game.opposition_choice) {"rock"}
  it 'Returns player name' do 
    expect(game.player_name).to eq "Ollie"
  end
end
