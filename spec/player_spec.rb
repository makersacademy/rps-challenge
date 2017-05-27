require 'player'

describe Player do
  subject(:player) { described_class.new('Trump') }

  describe '#name' do
    it 'returns the player name' do
      expect(player.name).to eq 'Trump'
    end
  end

end
