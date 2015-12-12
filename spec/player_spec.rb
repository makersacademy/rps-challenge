require 'player'

describe Player do
  let(:player) { described_class.new 'Jon'}
  it 'has a player name after initialization' do
    expect(player.name).to eq 'Jon'
  end
  describe '#is_computer?' do
    it 'returns false by default' do
      expect(player.is_computer?).to be false
    end
  end
end
