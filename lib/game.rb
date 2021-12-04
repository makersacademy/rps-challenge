require_relative 'player'

class Game
  moves = ["ROCK", "PAPER", "SCISSORS"]     # this is not great as the class is open for modification => open close principle

  attr_reader :player1, :player2, :choosen_move
  def initialize(player1, player2 = Player.new("Computer"))
    @player1 = player1
    @player2 = player2
  end

  def choose_move(move)
    @choosen_move = move
  end

  def pick_random(moves)
    moves.sample
  end
end
