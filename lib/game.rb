class Game
  attr_reader :computer_move, :player_move, :result

  VALID_MOVES = ["ROCK", "PAPER", "SCISSORS"]

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def initialize(player_move)
    @player_move = player_move
    @computer_move = VALID_MOVES.sample
  end

  def calculate_result
    c_move = @computer_move.downcase.to_sym
    p_move = @player_move.downcase.to_sym

    @result = \
      if c_move == p_move
        "IT'S A DRAW!"
      elsif p_move == RULES[c_move]
        "COMPUTER WINS!"
      else
        "YOU WIN!"
      end
  end
end
