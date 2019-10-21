require 'player'

describe Player do
  subject(:dave) { described_class.new('Dave') }
  
  subject(:barry) { described_class.new('Barry') }

  describe '#name' do
    it 'returns the name' do
      expect(dave.name).to eq 'Dave'
    end
  end
end
