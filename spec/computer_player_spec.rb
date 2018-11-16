require 'computer_player'

describe ComputerPlayer do
  let(:computer_player) { described_class.new }

  it 'will select a move at random' do
    100.times { expect(computer_player.move).to eq('rock').or eq('paper').or eq('scissors') }
  end
end
