require 'player'

describe Player do
  subject(:samir) { Player.new('Samir') }

  describe '#name' do
    it 'returns the name' do
      expect(samir.name).to eq 'Samir'
    end
  end
end
