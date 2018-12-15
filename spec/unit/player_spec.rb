require 'player'

describe Player do
  subject(:gon) { described_class.new('Gon') }

  describe '#name' do
    it 'returns player name' do
      expect(gon.name).to eq 'Gon'
    end
  end
end
