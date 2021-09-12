require 'player'

describe Player do
  subject(:player) { described_class.new('Mabon') }

  it 'return a name when called' do
    expect(player.name).to eq 'Mabon'
  end

  it 'returns player choice when called' do
    player.choose_play('Rock')
    expect(player.choice).to eq 'Rock'
  end
end