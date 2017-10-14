require 'player'

describe Player do
  subject(:player) { described_class.new('Lucy') }

  it 'returns its name' do
    expect(player.name).to eq 'Lucy'
  end
end
