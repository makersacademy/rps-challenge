require 'player'

describe Player do

  subject(:player) { described_class.new('Ben') }

  describe '#name' do
    it 'returns the name' do
      expect(player.name).to eq('Ben')
    end
  end

end
