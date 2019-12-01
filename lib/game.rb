require_relative 'player'

class Game
  attr_reader :player_1, :comp_move

  MOVES = ["Rock", "Paper", "Scissors"]

  def initialize(player1)
    @player_1 = player1
  end

  def random_move
    @comp_move = MOVES[rand(3)]
  end

  def result
    return "Draw" if @player_1.move == @comp_move

    lose? ? "You lose" : "You win"
  end

  def lose?
    return true if
    @player_1.move == "Rock" && @comp_move == "Paper" ||
    @player_1.move == "Paper" && @comp_move == "Scissors" ||
    @player_1.move == "Scissors" && @comp_move == "Rock"
  end

end
