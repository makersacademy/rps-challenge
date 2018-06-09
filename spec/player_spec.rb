describe Player do
  it 'player can show its name' do
    player = Player.new("Rob")
    player_name = player.name
    expect(player_name).to eq "Rob"
  end
end
