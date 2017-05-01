require 'opponent'

describe Opponent do
  subject(:opponent) { described_class.new }

  describe '#random_option' do
    it 'returns a random shape' do
      expect(Opponent::RANDOM_OPTION).to include opponent.randomise
    end
  end
end
