require 'player'

describe Player do
  it 'is created with a name' do
    player = Player.new('Phil')
    expect(player.name).to eq 'Phil'
  end
end
