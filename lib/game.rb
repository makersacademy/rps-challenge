require_relative './player'
require_relative './bot'

class Game
  attr_reader :name, :move, :computer_move

  def initialize(name, move)
    @name = name
    @move = move
    @computer_move = %w[Rock Paper Scissors].sample
  end

  def result
    combos = { "Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper" }
    if move == computer_move then "Draw"
    elsif combos[move] == computer_move then "You won!"
    else
      "You lost!"
    end
  end
end
