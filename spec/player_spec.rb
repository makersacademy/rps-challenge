require 'player'

describe Player do
  subject(:player) { described_class.new('Archie') }

  describe '#name' do
    it 'returns the player\'s name' do
      expect(player.name).to eq 'Archie'
    end
  end
end
