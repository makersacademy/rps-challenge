require 'player'

describe Player do
  it 'checks that we can create a player with a name arguement' do
    player = Player.new("nico")
    expect(player.name).to eq 'nico'
  end
end