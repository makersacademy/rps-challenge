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
      expect(mikey.points).to eq described_class::STARTING_POINTS
    end
  end
end