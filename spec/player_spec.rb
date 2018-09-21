require 'player'

describe Player do
  subject(:vu) { Player.new('Vu') }

  describe '#name' do
    it 'returns the name' do
      expect(vu.name).to eq 'Vu'
    end
  end
end