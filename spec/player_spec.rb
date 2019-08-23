require 'player'

describe Player do
  it 'stores a player name' do
    player = Player.new('John')
    expect(player.name).to eq('John')
  end
end
