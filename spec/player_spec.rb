require 'player'

describe Player do
  subject(:jack) { described_class.new('Jack') }

  describe '#name' do
    it 'returns the name' do
      expect(jack.name).to eq 'Jack'
    end
  end
end
