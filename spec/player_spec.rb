require 'player'

describe Player do
  name = 'J. Bloggs'
  subject(:player) { described_class.new(name) }

  describe '#initialize' do
    it 'stores the player name' do
      expect(player.name).to eq name
    end
  end
end
