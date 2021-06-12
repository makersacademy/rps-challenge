require './lib/opponent.rb'

describe Opponent do
  subject(:opponent) { described_class.new }

  describe '#move' do
    it 'returns a random move' do
      expect(Opponent::ALL_MOVES).to include opponent.move
    end
  end
end