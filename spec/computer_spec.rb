require 'computer'

describe Computer do
  let(:computer) { described_class.new }

  describe '#move' do
    it 'computer does a random move' do
      expect(computer.random_move).to eq("Rock").or eq("Paper").or eq("Scissors")
    end
  end
end