require 'player'

describe Player do
  let(:computer_player) { described_class.new }
  let(:moves) { ['rock', 'paper', 'scissors', 'lizard', 'spock'] }

  it 'will select a move at random' do
    100.times { expect(moves).to include(computer_player.select_move) }
  end

end
