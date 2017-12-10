require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double(:my_player1, choice: 'Rock', name: 'Player', winner?: true) }
  let(:player2) { double(:my_player2, choice: 'Scissors', record_win: true) }
  before { srand(2) }

  it 'can make a random choice for a computer opponent' do
    expect(game.computer_choice).to eq 'Rock'
  end

  it 'calculates the correct result' do
    allow(player1).to receive(:record_win)
    game.results
    expect(game.result).to eq 'Player Wins!'
  end

  it 'can update player scores according to result' do
    expect(player1).to receive(:record_win)
    game.results
  end

  it 'knows when a game is won' do
    expect(game.game_won?).to be true
  end

end
