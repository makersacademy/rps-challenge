require 'player'

RSpec.describe Player do
  it 'returns the player name' do
    player = Player.new('Sandra')
    expect(player.name).to eq 'Sandra'
  end

  it 'add a choice to the player' do
    player = Player.new('Sandra')
    player.add('scissors')
    expect(player.choice).to eq 'scissors'
  end
end
