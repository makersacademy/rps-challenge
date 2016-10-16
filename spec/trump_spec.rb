require 'trump'

describe Trump do

  describe '#weapon_choice' do
    it 'selects weapon randomly' do
      allow(subject).to receive(:random_selection).and_return(:rock)
      subject.choose_weapon
      expect(subject.weapon_choice).to eq(:rock)
      end
  end

end
