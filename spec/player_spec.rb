require 'player'

describe Player do
  describe '#initialize' do
    it 'initialize with a name' do
      player = Player.new('Dill')
      expect(player.name).to eq 'Dill'
    end
    it 'initializes with 0 points' do
      player = Player.new('Dill')
      expect(player.points).to eq Player::ZERO_POINTS
    end
  end

  describe '#gain_point' do
    it 'adds a point to points' do
      player = Player.new('Dill')
      expect { player.gain_point }.to change { player.points }.by(Player::ONE_POINT)
    end
  end
end
