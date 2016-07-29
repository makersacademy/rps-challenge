require 'player'

describe Player do
  subject(:player) { described_class.new('Mannie') }

  it 'should allow a players name to be stored and read' do
    expect(player.name).to eq 'Mannie'
  end
end
