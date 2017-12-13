require 'player'

describe Player do
  subject(:player) { described_class.new }
  it 'returns player\'s name' do
    expect(player.name).to eq('Player 1')
  end
end
