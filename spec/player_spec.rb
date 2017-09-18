require 'player'

describe Player do
  it 'creates new player' do
    player = Player.new("thomas")
    expect(player.name).to eq "thomas"
  end
end
