require 'rps_computer'

describe RPSComputer do

  let(:new_move) { RPSComputer.new("fake move") }

  it 'returns a random move' do
    expect(["Rock", "Paper", "Scissors"]).to include(new_move.random_move)
  end
end
