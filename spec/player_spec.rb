require 'player'

describe Player do

  subject { described_class.new('Example Name') }
  describe '#weapon_choice' do
    it 'weapon_choice will assign the weapon at to the weapon variable' do
      subject.weapon_choice('spock')
      expect(subject.weapon).to eq (:spock)
    end
  end
end
