require 'player'

describe Player do
  subject(:simona) { Player.new('Simona') }

  describe '#name' do
    it 'returns the name' do
      expect(simona.name).to eq 'Simona'
    end
  end
end
