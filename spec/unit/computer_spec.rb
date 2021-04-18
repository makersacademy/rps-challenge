require 'computer'

describe Computer do
  it { is_expected.to respond_to :weapon }

  describe '#rand_weapon' do
    it 'chooses a weapon at random' do
      srand(4)
      subject.rand_weapon
      expect(subject.weapon).to eq 'Scissors'
    end
  end
end
