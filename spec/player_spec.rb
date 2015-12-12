require 'player'

describe Player do
  name = 'J. Bloggs'
  ai = false
  subject(:player) { described_class.new(name, ai) }

  describe '#initialize' do
    it 'stores the name and whether ai controlled' do
      expect([player.name, player.ai]).to eq [name, ai]
    end
  end
end
