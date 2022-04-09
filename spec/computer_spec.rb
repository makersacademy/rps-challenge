require 'computer'

describe Computer do
  let(:computer) { described_class.new }

  describe '#random_move' do
    it 'computer does a random move' do
      expect(computer.random_move).to eq("Rock").or eq("Paper").or eq("Scissors")
    end
  end

  describe '#move' do
    it 'computer knows what move it did' do
      allow(computer).to receive(:move).and_return("Rock")
      expect(computer.move).to eq("Rock")
    end
  end
end