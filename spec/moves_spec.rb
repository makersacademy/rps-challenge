require 'moves'

class MovesTest
  include Moves
end

describe MovesTest do
  subject(:game) { described_class.new }

  it 'stores game moves' do
    expect(Moves::MOVES).to eq ["Rock", "Paper", "Scissors"]
  end

  describe '#winning_move' do

    it 'scissor beats paper' do
      expect(game.winning_move("Scissors", "Paper")).to eq "Scissors"
    end
  end

end