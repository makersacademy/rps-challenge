require 'player'

describe Player do
  it 'initializes with and returns a player name' do
    player = described_class.new('Dave')
    expect(player.name).to eq 'Dave'
  end
  it 'stores and return hand shapes' do
    player = described_class.new('Dave')
    player.play('Rock')
    expect(player.shape).to eq 'Rock'
  end
end
