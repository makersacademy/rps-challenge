require 'computer_move'

describe ComputerMove do

  subject(:computer_move) { ComputerMove.new }
  let(:computer_move) { double(:computer_move, :make_move => 'scissors') }

  describe '#make_move' do
      it 'returns the chosen move with scissors' do
        expect(computer_move.make_move).to eq 'scissors'
      end
    end
end
