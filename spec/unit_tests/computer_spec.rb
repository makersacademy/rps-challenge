require 'computer'

describe Computer do
  it 'can make a random move' do
    moves = ["Rock", "Paper", "Scissors"]
    expect(moves).to include subject.rand_move
  end
end
