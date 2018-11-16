require 'computer_move'

describe ComputerMove do
  let(:computer_move) { described_class.new }

  it 'will select a move at random' do
    100.times { expect(computer_move.move).to eq('rock').or eq('paper').or eq('scissors') }
  end
end
