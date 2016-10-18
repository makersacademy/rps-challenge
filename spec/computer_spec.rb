require 'computer'

describe Computer do

  subject(:computer) {described_class.new}

  describe '#weapon' do
    it 'should select sisssors as its weapon of choice' do
      allow(Computer::WEAPONS).to receive(:sample) {:scissors}
      computer.weapon_choice
      expect(computer.weapon).to eq :scissors
    end
  end
end
