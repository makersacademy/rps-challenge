require 'player'

describe Player do
  subject(:denzel) { described_class.new('Denzel') }

  describe '#name' do
    it 'returns the name' do
      expect(denzel.name).to eq 'Denzel'
    end
  end
end
