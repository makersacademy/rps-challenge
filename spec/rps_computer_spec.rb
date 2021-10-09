require 'rps_computer'

describe RPSComputer do

  let(:new_move) { RPSComputer.new }

  it 'returns a random move' do
    expect(["rock", "paper", "scissors"]).to include(new_move.random_move)
  end
end