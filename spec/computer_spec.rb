require 'computer'

describe Computer do
  describe '#weapon_choice' do
    it 'weapon_choice will choose a weapon at random' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      subject.weapon_choice
      expect(subject.weapon).to eq :rock
    end
  end
end
