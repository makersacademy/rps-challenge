require 'player'

describe Player do
  subject(:player) {described_class.new('maggie')}
  DEFAULT_SCORE = 0

  describe '#initialize' do
    it 'should initialize with a player name' do
      expect(player.name).to eq('maggie')
    end
    it 'should initialize with a default score score' do
      expect(player.score).to eq DEFAULT_SCORE
    end
  end

  describe 'attribute values' do
    it 'returns the name' do
      expect(player.name).to eq('maggie')
    end

    it 'returns the score' do
      expect(player.score).to eq DEFAULT_SCORE
    end
  end

end
