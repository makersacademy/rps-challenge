require 'player'

describe Player do
  subject(:matt){ described_class.new('Matt') }


  describe '#name' do
    it 'returns player name' do
      expect(matt.name).to eq('Matt')
    end
  end
end
