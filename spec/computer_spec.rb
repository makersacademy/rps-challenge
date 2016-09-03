require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#weapon' do
    it 'returns a random weapon' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      computer.choice
      expect(computer.choice).to eq :rock
    end
  end
end
