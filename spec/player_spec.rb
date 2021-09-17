require 'player'

describe Player do
  subject(:player) { described_class.new('Jake') }

  it 'returns the player name' do
    expect(player.name).to eq('Jake')
  end

  it 'returns players weapon when called' do
    player.select('Rock')
    expect(player.select).to eq('Rock')
  end
end