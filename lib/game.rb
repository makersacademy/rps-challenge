class Game
  VALID_MOVES = ["ROCK", "PAPER", "SCISSORS"]
  attr_reader :c_move
  attr_reader :valid_moves
  attr_reader :player_move

  def initialize(player_move)
    @valid_moves = VALID_MOVES
    @player_move = player_move
    winner
  end

  def winner
    @c_move = comp_move
    result?
  end

private
  def result?
    if @c_move == @player_move
      "IT'S A DRAW!"
    elsif (@c_move == "ROCK" && @player_move == "SCISSORS") ||
     (@c_move == "PAPER" && @player_move == "ROCK") ||
     (@c_move == "SCISSORS" && @player_move == "PAPER")
      "COMPUTER WINS!"
    else
      "YOU WIN!"
    end
  end

  def comp_move
    @valid_moves.sample
  end
end
