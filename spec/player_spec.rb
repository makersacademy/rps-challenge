require 'player'

describe Player do
  subject(:player) { described_class.new("Chris") }

  it 'should return the players name' do
    expect(player.name).to eq "Chris"
  end
end
