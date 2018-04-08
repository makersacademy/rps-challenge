require 'player'

describe Player do
  subject(:miriam) { Player.new('Miriam') }

  describe '#name' do
    it 'returns the name' do
      expect(miriam.name).to eq 'Miriam'
    end
  end
end
