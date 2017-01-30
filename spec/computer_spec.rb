require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#weapon' do
    it 'assigns a random weapon' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      computer.choose_weapon
      expect(computer.weapon).to eq :rock
    end
  end
end
