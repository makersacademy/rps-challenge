require_relative 'player'
require_relative 'random_move'
class Game

  MOVES = ['rock', 'paper', 'scissors']
  LOGIC = {
    ['rock', 'paper'] => 2,
    ['rock', 'scissors'] => 1,
    ['paper', 'rock'] => 1,
    ['paper', 'scissors'] => 2,
    ['scissors', 'paper'] => 1,
    ['scissors', 'rock'] => 2,
  }

  attr_reader :player1, :player2, :moves
  attr_accessor :multiplayer

  def initialize(player1,player2,player=Player)
    @player1 = player.new(player1)
    @player2 = player.new(player2)
    @multiplayer = false
    @moves = []
  end

  def add_move(move)
    @moves << move
  end

  def first_move
    @moves.first
  end

  def second_move
    @moves[1]
  end

  def computer_move(random_move = RandomMove.new)
    add_move(random_move.move)
  end

  def winner
    return @player1 if LOGIC[@moves] == 1
    return @player2 if LOGIC[@moves] == 2
    return 'draw' if LOGIC[@moves] == nil
  end

end
