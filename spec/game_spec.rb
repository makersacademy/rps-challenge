require 'game'

describe Game do

  let(:game) { described_class.new }

  it 'returns a string' do
    expect(game.computer_move).to be_a String
  end

  it 'chooses from array of Rock, Paper, Scissors' do
    expect(Game::MOVE).to include(game.computer_move)
  end

end