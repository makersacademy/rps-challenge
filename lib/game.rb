require_relative 'player'

class Game
  attr_reader :player_1

  MOVES = ["Rock", "Paper", "Scissors"]

  def initialize(player1)
    @player_1 = player1
  end

  def random_move
    MOVES[rand(3)]
  end
end
