require 'player'

describe Player do

  let(:player) { described_class.new 'Wilma' }

  it 'has a name' do
    expect(player.name).to eq 'Wilma'
  end

  it 'can have a weapon' do
    expect(player).to respond_to :weapon=
  end

  it 'can say if it does not yet have a weapon' do
    expect(player).not_to be_ready
  end

  it 'can say if it has a weapon' do
    player.weapon = :rock
    expect(player).to be_ready
  end

end