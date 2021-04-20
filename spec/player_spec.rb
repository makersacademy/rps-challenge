require 'player'

describe Player do
  subject(:player) { described_class.new('Yohann') }

  it 'returns a name' do
    expect(player.name).to eq 'Yohann'
  end

  it 'returns a weapon' do
    player.weapon = :rock
    expect(player.weapon).to eq :rock
  end
end
