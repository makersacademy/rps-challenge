require 'game'

describe Game do
  let(:player) { double('player') }
  subject(:game) { described_class.new(player) }

  it 'declares player as winner if player wins' do
    expect(game.winner("Rock", "Scissors")).to eq(player)
  end

  it 'declares the computer as winner if the computer wins' do
    expect(game.winner("Scissors", "Rock")).to eq("The Computer!")
  end

  it 'declares a draw if there is no winner' do
    expect(game.winner("Paper", "Paper")).to eq("...there is no winner, it's a draw!")
  end
end
