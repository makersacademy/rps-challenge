require 'player'

describe Player do
  subject(:player) { described_class.new('Alex') }

  describe '#name' do
    it 'returns to players name' do
      expect(player.name).to eq 'Alex'
    end
  end
end
