require 'player'

describe Player do
subject(:player) {described_class.new('Matt')}

  describe '#name' do
    it 'returns the players name' do
      expect(player.name).to eq('Matt')
    end
  end
end
