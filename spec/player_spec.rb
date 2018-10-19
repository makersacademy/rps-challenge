require 'player'

describe Player do
  subject(:player) { described_class.new('Terry') }

  describe '#name' do
    it 'returns name' do
      expect(player.name).to eq('Terry')
    end

  end

end
