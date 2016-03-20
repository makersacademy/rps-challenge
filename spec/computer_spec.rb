require 'computer'

describe Computer do
  subject(:computer){described_class.new}
  describe '#weapon' do
    it 'should pick a random weapon & save as its choice' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      computer.weapon
      expect(computer.choice).to eq :rock
    end
  end
end
