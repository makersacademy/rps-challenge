require_relative './player'
require_relative './bot'

class Game
  attr_reader :player_1, :player_2, :computer_move
  MAP = { "Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper" }

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @computer_move = %w[Rock Paper Scissors].sample
  end

  def result(player_1_move)
    if player_1_move == @computer_move then "Draw"
    elsif MAP[player_1_move] == @computer_move then "You won!"
    else
      "You lost!"
    end
  end

  def comp_pick

  end
end
