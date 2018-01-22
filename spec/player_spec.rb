require './lib/player'

describe Player do
  subject(:player) { described_class.new('John') }
  it 'returns player name' do
    expect(player.name).to eq 'John'
  end
end
