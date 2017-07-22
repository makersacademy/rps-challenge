require 'computer'

describe Computer do

  subject(:computer) { described_class.new }
  let(:computer_1) { double :computer, computers_move: 'Scissors'}

  describe '#computers_move' do
    it 'outputs a random move' do
      expect(computer_1.computers_move).to eq 'Scissors'
    end
  end
end
