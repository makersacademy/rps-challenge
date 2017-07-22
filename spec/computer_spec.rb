require 'computer'

describe Computer do

  subject(:computer) { described_class.new }
  let(:computer_1) { double :computer, computers_move: 'Scissors'}

  describe '#computers_move' do
    it 'outputs a random move' do
      # allow(computer_1).to receive(:computers_move).and_return('Scissors')
      expect(computer_1.computers_move).to eq 'Scissors'
    end
  end
end
