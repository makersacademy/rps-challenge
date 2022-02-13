require 'player'

describe Player do
  subject(:claire) { Player.new('Claire') }
  subject(:chris) { Player.new('Chris') }

  describe ' #name' do
    it 'returns the player name' do
      expect(claire.name).to eq 'Claire'
    end
  end

  describe ' #points' do
    it 'returns the points' do
      expect(claire.points).to eq described_class::POINTS_DEFAULT
    end
  end

  describe ' #points won' do
    it 'increases the points of a player' do
      expect { claire.pointswon }.to change { claire.points }.by(1)
    end
  end
end
