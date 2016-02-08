require_relative 'player'
require_relative 'computer'


class Game

  attr_reader :player, :computer

  RULES= {'ROCK' => "SCISSORS",
          'PAPER'=> "ROCK",
          'SCISSORS' => 'PAPER'}

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def result(player_move, comp_move)
    return :win if RULES[player_move] == comp_move
    return :draw if player_move == comp_move
    :lose
  end
end
