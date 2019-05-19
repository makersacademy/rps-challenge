describe Player do
  it 'stores a name' do
    player = Player.new("Mew")
    expect(player.name).to eq "Mew"
  end
end
