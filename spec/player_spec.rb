require 'player'

describe Player do
  subject(:player_1) { described_class.new('Ben') }
  describe '#names' do
    it 'shows names' do
      expect(player_1.name).to eq 'Ben'
    end
  end

  describe '#choice' do
    it 'lets player 1 choose paper' do
      player_1.choice = 'Paper'
      expect(player_1.choice).to eq 'Paper'
    end
  end
end
