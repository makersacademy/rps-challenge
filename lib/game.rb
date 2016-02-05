require_relative 'player'
require_relative 'computer'


class Game

  MOVES= ['ROCK', 'PAPER', 'SCISSORS']

  RULES= {'ROCK' => "SCISSORS",
          'PAPER'=> "ROCK",
          'SCISSORS' => 'PAPER'}

  def result(player_move, comp_move)
    if RULES[player_move] == comp_move
      :win
    elsif player_move == comp_move
      :draw
    else
      :lose
    end
  end
end
