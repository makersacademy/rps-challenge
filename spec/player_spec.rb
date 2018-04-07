require 'player'

describe Player do
  subject(:player) { described_class.new("Andrew") }

  describe '#name' do
    it 'returns a players name' do
      expect(player.name).to eq 'Andrew'
    end
  end
end
