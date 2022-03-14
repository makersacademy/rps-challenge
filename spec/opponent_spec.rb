require 'opponent'

describe Opponent do
  subject(:opponent) { described_class.new }

  describe '#shape' do
    it 'returns a random shape' do
      expect([:rock, :paper, :scissors]).to include opponent.shape
    end
  end
end