require 'enemy'

describe Enemy do
  subject(:enemy) { Enemy.new }

  it { is_expected.to respond_to(:choice).with(0).arguments }

  describe '#choose_weapon' do
    it 'returns a random weapon' do
      subject.choose_weapon
      p subject.choice
      expect(Enemy::CHOICES).to include subject.choice
    end
  end

end
