require './lib/player'

describe Player do
  it 'Stores a player\'s name' do
    player = Player.new('Simon')
    expect(player.name).to eq 'Simon'
  end
end
