require './lib/player'

describe Player do
  subject(:beca) { Player.new('Beca') }

  describe '#name' do
    it 'returns the players name' do
      expect(beca.name).to eq 'Beca'
    end
  end
end
