require 'computer_move'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#move' do
    it 'generates a rock as a move' do
      allow(computer).to receive(:move).and_return(:rock)
      expect(computer.move).to eq :rock
    end
  end

end
