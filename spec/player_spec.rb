require 'player'

describe Player do
  subject(:player) { described_class.new 'Daniel' }

  it 'returns a name' do
    expect(player.name).to eq 'Daniel'
  end

  it 'stores a choice' do
    player.choose('Rock')
    expect(player.choice).to eq 'Rock'
  end
end
