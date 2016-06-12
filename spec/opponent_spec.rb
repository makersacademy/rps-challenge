require 'opponent'

describe Opponent do
  subject(:opponent) { described_class.new }

  describe '#weapon' do
    it 'returns a random weapon' do
      expect(Opponent::WEAPONS).to include opponent.weapon
    end
  end
end
