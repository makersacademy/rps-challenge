require 'player'

describe Player do
  subject(:player) { described_class.new('Kavita') }

  it 'player should have a name' do
    expect(player.name).to eq 'Kavita'
  end

  it 'allow player should choose a weapon' do
    player.weapon=(:rock)
    expect(player.weapon).to eq :rock
  end
  
end
