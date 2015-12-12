require 'player'

describe Player do
  let(:player) { described_class.new 'Jon'}
  it 'has a player name after initialization' do
    expect(player.name).to eq 'Jon'
  end
end
