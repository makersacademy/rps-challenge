require 'player'

describe Player do
subject(:player) {described_class.new('Dave')}

  describe '#initialize' do
    it 'initialized with the argument name' do
      expect(subject.name).to eq 'Dave'
    end
  end

  describe '#weapon_select' do
    it 'saves the weapon chosen by the player' do
      subject.weapon_select('rock')
      expect(subject.weapon).to eq :rock
    end

    it 'raises error if an invalid weapon' do
      expect{subject.weapon_select('spoon')}.to raise_error 'not a possible weapon'
    end
  end

end
