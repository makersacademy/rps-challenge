require_relative '../../lib/player'

describe Player do
  subject(:player) { described_class.new("Test name") }

  it 'has a name' do
    expect(player.name).to eq "Test name"
  end
end
