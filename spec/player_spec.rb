require 'player'

describe Player do
  subject(:player) { described_class.new('Lyna') }

  it 'initializes with a name' do
    expect(player.name).to eq 'Lyna'
  end
end
