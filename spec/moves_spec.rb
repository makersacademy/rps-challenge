require 'moves'

describe Moves do

  subject(:moves) { described_class.new }

  it 'returns a random move' do
    expect(['rock', 'paper', 'scissors']).to include(moves.random_move)
  end

end