require 'game'

describe Game do
  let(:player1) { double('player') }
  let(:player2) { double('player') }
  subject(:game) { described_class.new(player1, player2) }

  it 'declares player as winner if player wins' do
    expect(game.winner("Rock", "Scissors")).to eq(player1)
  end

  it 'declares player 2 as winner if the computer wins' do
    expect(game.winner("Scissors", "Rock")).to eq(player2)
  end

  it 'declares a draw if there is no winner' do
    expect(game.winner("Paper", "Paper")).to eq("...there is no winner, it's a draw!")
  end
end
