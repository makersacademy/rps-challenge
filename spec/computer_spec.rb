require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  describe '#choose_hand' do
    it 'returns an element that belongs to the list of hands' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      computer.choose_hand
      expect(computer.choice).to eq :rock
    end
  end
end
