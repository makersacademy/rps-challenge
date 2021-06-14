require 'computer'

describe Computer do
  it { is_expected.to respond_to :weapon }
  it { is_expected.to respond_to :points }

  describe '#rand_weapon' do
    it 'chooses a weapon at random' do
      srand(4)
      subject.rand_weapon
      expect(subject.weapon).to eq 'Scissors'
    end
  end

  describe '#points' do
    it 'has a default value of 0' do
      expect(subject.points).to eq Computer::POINTS
    end
  end
end
