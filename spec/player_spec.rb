require './lib/player'

describe Player do
  subject(:player) { described_class.new('Mahmud') }

  it 'returns the player name' do
    expect(player.name).to eq 'Mahmud'
  end

  it 'returns the player weapon' do
    allow(player).to receive(:weapon) {:rock}
    expect(player.weapon).to eq :rock
  end

end
