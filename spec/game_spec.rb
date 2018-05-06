require 'game'

describe Game do
  describe 'WEAPONS' do
    it 'returns a weapon' do
      expect(described_class::WEAPONS.first).to eq(:rock)
    end
  end
end
