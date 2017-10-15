require 'player'

describe Player do
  subject(:player) { described_class.new('Playa') }

  describe '#initialize' do
    it 'returns the name' do
      expect(player.name).to eq 'Playa'
    end
  end
end
