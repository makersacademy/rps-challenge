require 'game'

describe Game do 
 
  let (:player1) {double :player, moves: 'paper'}
  let (:player2) {double :computer, moves: 'rock'}

  it 'can declare a winner' do 
    game = Game.new player1, player2
    expect(game.winner?).to eq "player1 wins"
  end


end