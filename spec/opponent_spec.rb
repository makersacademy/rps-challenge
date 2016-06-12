require 'opponent'

describe Opponent do

  subject(:opponent) { described_class.new }

  describe '#shape' do
    it 'returns a random choice' do
      srand(100)
      expect(opponent.choice).to eq('Rock')
    end
  end
end
