require './lib/game.rb'

describe Game do
  it 'generates a computer rps choice' do
    players_choice = 'Rock'
    srand(1)
    game = Game.new(players_choice)
    expect(game.computer_choice).to eq 'Scissors'
  end
  it 'calculates the winner' do
    players_choice = 'Rock'
    srand(1)
    game = Game.new(players_choice)
    expect(game.winner).to eq 'Player'
  end
end
