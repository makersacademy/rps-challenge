require 'player'

describe Player do
  subject(:player) { described_class.new('Emma') }

  it 'initializes with a name' do
    expect(player.name).to eq 'Emma'
  end

end
