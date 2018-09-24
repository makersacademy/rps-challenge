require_relative 'computer'

class Player
  attr_reader :name, :computer

  def initialize(name, computer = Computer.new)
    @computer = computer.choice
    @name = name
  end

  def move(player_move)
    if player_move == @computer
      "Draw"
    elsif player_move == "paper" && @computer == "scissors"
      "Lost"
    elsif player_move == "paper" && @computer == "rock"
      "Won"
    elsif player_move == "scissors" && @computer == "paper"
      "Won"
    elsif player_move == "scissors" && @computer == "rock"
      "Lost"
    elsif player_move == "rock" && @computer == "paper"
      "Lost"
    elsif player_move == "rock" && @computer == "scissors"
      "Won"
    else
      "This is not a move"
    end
  end
end
