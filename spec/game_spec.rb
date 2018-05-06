require 'game'

describe Game do
  subject(:game) { described_class.new }

  describe 'WEAPONS' do
    it 'returns a weapon' do
      expect(described_class::WEAPONS.first).to eq(:rock)
    end
  end

  describe '#result' do
    it 'gives the result of two weapon arguments' do
      expect(game.result(:rock, :scissors)).to eq(:win)
    end
  end
end
