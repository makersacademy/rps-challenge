require 'game'

describe Game do

  it 'displays a game' do
    game = Game.new("Rock", "Scissors")
    expect(game.result).to eq "Player"
    game = Game.new("Rock", "Paper")
    expect(game.result).to eq "Computer"
    game = Game.new("Rock", "Rock")
    expect(game.result).to eq "Draw"
    game = Game.new("Scissors", "Rock")
    expect(game.result).to eq "Computer"
    game = Game.new("Scissors", "Paper")
    expect(game.result).to eq "Player"
    game = Game.new("Scissors", "Scissors")
    expect(game.result).to eq "Draw"
    game = Game.new("Paper", "Rock")
    expect(game.result).to eq "Player"
    game = Game.new("Paper", "Paper")
    expect(game.result).to eq "Draw"
    game = Game.new("Paper", "Scissors")
    expect(game.result).to eq "Computer"
  end

end
