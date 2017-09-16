require 'player'

describe Player do
  subject(:player) { described_class.new('Player') }

  it 'has a name' do
    expect(player.name).to eq "Player"
  end
end
