require 'player'

describe Player do
  subject(:bella) { Player.new('Bella') }

  describe '#name' do
    it 'returns the name' do
      expect(bella.name).to eq 'Bella'
    end
  end
end
