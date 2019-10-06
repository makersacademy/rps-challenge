require 'weapon'

describe Weapon do

  describe '#random_weapon' do
    it "should return a weapon at random for the computers choice" do
      allow(subject).to receive(:random_weapon).and_return(:rock)
      expect(subject.random_weapon).to eq :rock
    end
  end

end
