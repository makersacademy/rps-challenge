require_relative 'comp_opponent'
require_relative 'player'

class Game
  attr_reader :player_move, :comp_move
  RULES = { "Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper" }

  def initialize(player_move, comp_move)
    @player_move = player_move
    @comp_move = comp_move
  end

  def result
    if RULES[@comp_move] == @player_move 
      "You lose!"
    elsif @player_move == @comp_move
      "It's a draw, play again?"
    else
      "You won!"
    end
  end
end
