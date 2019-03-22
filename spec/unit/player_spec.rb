require 'player'

describe Player do
  it 'Creates a new player with a name' do
    player = Player.new("Sam")
    expect(player.name).to eq "Sam"
  end
end
