require_relative 'player'
require_relative 'computer'


class Game

  attr_reader :player, :computer

  MOVES= ['ROCK', 'PAPER', 'SCISSORS']

  RULES= {'ROCK' => "SCISSORS",
          'PAPER'=> "ROCK",
          'SCISSORS' => 'PAPER'}

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

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
