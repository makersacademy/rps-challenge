require 'player'

describe Player do
  it 'has a name' do
    name = 'Pat' 
    player = Player.new(name)
    expect(player.name).to eq name
  end
end
