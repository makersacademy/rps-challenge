require 'computer'

describe Computer do
  subject(:computer) {described_class.new}

  describe '#move' do
    it 'randomises a move' do
      srand(1)
      expect(computer.move).to eq :paper
    end
  end
end
