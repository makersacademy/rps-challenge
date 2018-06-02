describe Player do
  it 'player can show its name' do
    # Setup
    player = Player.new("Rob")
    # Exercise - player.name
    player_name = player.name
    # Verification - expect it to eq name
    expect(player_name).to eq "Rob"
  end

  it 'can show the choice player made' do
    # Setup
    player = Player.new("Rob")
    player.selects("Paper")
    # Exercise
    choice = player.choice
    # Verification
    expect(choice).to eq "Paper"
  end
end
