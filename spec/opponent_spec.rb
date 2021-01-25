require "opponent"

describe Opponent do
  subject(:opponent) { described_class.new }

  describe '#shape' do
    it 'returns a random shape' do
      expect(Opponent::POSSIBLE_SHAPES).to include opponent.shape
    end
  end
end
