class Game
  VALID_MOVES = ["ROCK", "PAPER", "SCISSORS"]

  attr_reader :computer_move, :player_move, :result

  def initialize(player_move)
    @player_move = player_move
    @computer_move = VALID_MOVES.sample
  end

  def calculate_result
    @result = if @computer_move == @player_move
                "IT'S A DRAW!"
              elsif (@computer_move == "ROCK" && @player_move == "SCISSORS") ||
                (@computer_move == "PAPER" && @player_move == "ROCK") ||
                (@computer_move == "SCISSORS" && @player_move == "PAPER")
                "COMPUTER WINS!"
              else
                "YOU WIN!"
              end
  end
end
