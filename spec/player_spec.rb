require 'player'

describe Player do
  subject(:player) { described_class.new('Graham') }

  describe '#name' do
    it 'returns player name' do
      expect(player.name).to eq "Graham"
    end
  end
end
