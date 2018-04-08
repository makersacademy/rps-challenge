require 'computer'

describe Computer do
  subject(:computer) { described_class.new }

  describe '#move' do
    it 'returns the computer move' do
      allow(computer).to receive(:move).and_return(:rock)
      expect(computer.move).to eq :rock
    end
  end
end
