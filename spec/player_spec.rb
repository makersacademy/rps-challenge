require 'player'

describe Player do
  subject(:player) { described_class.new('Ben') }
  let(:choice) { double :choice }
  describe '#name' do
    it 'returns the player name' do
      expect(player.name).to eq 'Ben'
    end
  end
end
