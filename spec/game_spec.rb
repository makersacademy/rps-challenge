require 'game'

describe Game do

  let (:game)   { Game.new                          }
  let (:player) { double :player, choice: :Scissors }

  def play_with(choice)
    player2 = double :player2, choice: choice
    game.add(player)
    game.add(player2)
  end

  it 'knows which moves win against other moves' do
    expect(game.loses_to(:Rock)).to eq ([:Scissors, :Lizard])
  end

  it 'knows when the game is tied' do
    play_with(:Scissors)
    expect(game.play).to eq('Its a Tie')
  end

  it 'knows when a player wins' do
    play_with(:Paper)
    expect(game.play).to eq('Player 1 Wins')
  end

  it 'knows when the player loses' do
    play_with(:Rock)
    expect(game.play).to eq('Player 2 Wins')
  end

  it 'can add a player' do
    game.add(player)
    expect(game.player1).to eq(player)
  end

  it 'can add a second player' do
    game.add(player)
    player2 = double :player2
    game.add(player2)
    expect(game.player2).to eq(player2)
  end

  it 'can assign a random choice to player2' do
    game.add(player)
    player2 = double :player2
    game.add(player2)
    allow(player2).to receive(:choose).and_return(:Scissors)
    game.generate_choice
  end

end