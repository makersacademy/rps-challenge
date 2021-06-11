require 'player'

describe Player do
  subject(:mikey) { Player.new('mikey') }

  describe '#name' do
    it 'returns the name' do
      expect(mikey.name).to eq 'mikey'
    end
  end

  describe '#score' do
    it 'returns player score' do
      expect(mikey.score).to eq described_class::DEFAULT_SCORE
    end
  end
end