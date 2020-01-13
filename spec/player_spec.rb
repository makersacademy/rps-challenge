require 'player'

describe Player do
  subject(:dave) { Player.new('Dave') }
  subject (:computer) {Player.new('Computer')}

  describe '#name' do
    it 'returns the name' do
      expect(dave.name).to eq 'Dave'
    end
  end
  describe '#scoring points' do
    it 'shows points' do
      expect(dave.points).to eq described_class::DEFAULT_POINTS
    end
  end
end
