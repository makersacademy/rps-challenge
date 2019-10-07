require 'player'

describe Player do
  subject(:player) { described_class.new('Me') }
  let(:choice) { double :choice }
  describe '#name' do
    it 'returns the player name' do
      expect(player.name).to eq 'Me'
    end
  end
end
