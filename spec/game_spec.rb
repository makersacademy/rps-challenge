require 'game'

describe Game do

  let (:game)   { Game.new }
  let (:player) { double :player, choice: :Scissors }

  it 'can generate a random option' do
    game.generate_choice
    expect(game.choice).to satisfy{ :Rock || :Paper || :Scissors || :Lizard || :Spock }
  end

  it 'can play the game with a player' do
    expect(game).to respond_to(:play_with)
  end

  it 'knows which moves win against other moves' do
    expect(game.loses_to(:Rock)).to eq ([:Scissors, :Lizard])
  end

  it 'knows when the game is tied' do
    game.choice = :Scissors
    expect(game.play_with(player)).to eq('Its a Tie')
  end

  it 'knows when the player wins' do
    game.choice = :Paper
    expect(game.play_with(player)).to eq('You Win')
  end

  it 'knows when the player loses' do
    game.choice = :Rock
    expect(game.play_with(player)).to eq('You Lose')
  end

end