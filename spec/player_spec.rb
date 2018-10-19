require 'player'

describe Player do
  it 'returns its name' do
    player = Player.new('Smeg')
    expect(player.name).to eq 'Smeg'
  end
end
