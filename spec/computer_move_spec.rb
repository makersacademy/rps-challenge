require 'computer_move'

describe ComputerMove do

  it 'will select a move at random' do
    100.times { expect(subject.select_move).to eq('rock').or eq('paper').or eq('scissors') }
  end
end
