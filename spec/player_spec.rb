require 'player'

describe Player do
  subject(:player)  { described_class.new 'Murilo' }

  it 'starts with a name' do
    expect(player.name).to eq 'Murilo'
  end

  it 'takes a weapon' do
    player.weapon = :paper
    expect(player.weapon).to eq :paper
  end
end
