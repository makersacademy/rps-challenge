require 'player'

describe Player do
  subject(:player_1) { Player.new('Farnaz') }
  subject(:player_2) { Player.new('David') }
  it 'returns the player name' do
    expect(player_1.name).to eq('Farnaz')
  end

  describe '#points' do
    it 'returns player points' do
      expect(player_1.points).to eq described_class::DEFAULT_POINTS
    end
  end

  describe '#reduces_point' do
    it 'reduces the player points when lost against the other player' do
      expect { player_1.reduce_point }.to change { player_1.points }.by(-1)
    end
  end
  
  describe '#choose' do
    it 'store player choice' do
      player_1.choose("rock")
      expect(player_1.choice).to eq 'rock'
    end
  end

end
