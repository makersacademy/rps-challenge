require 'player'

describe Player do
  subject(:player) { described_class.new('Kye') }

  describe '#name' do
    it 'returns the player name' do
      expect(player.name).to eq 'Kye'
    end
  end
end
