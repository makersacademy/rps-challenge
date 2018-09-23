require_relative 'computer'

class Player
  attr_reader :name

  def initialize(name, computer = Computer.new)
    @computer = computer
    @name = name
  end

  def move(player_move)
    if player_move == @computer.move
      "Draw"
    elsif player_move == "paper" && @computer.move == "scissors"
      "Lost"
    elsif player_move == "paper" && @computer.move == "rock"
      "Won"
    elsif player_move == "scissors" && @computer.move == "paper"
      "Won"
    elsif player_move == "scissors" && @computer.move == "rock"
      "Lost"
    elsif player_move == "rock" && @computer.move == "paper"
      "Lost"
    elsif player_move == "rock" && @computer.move == "scissors"
      "Won"
    else
      "This is not a move"
    end
  end
end
