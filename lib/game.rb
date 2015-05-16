require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player,:computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def result
    if player.shape == computer.random_shape
      return "TIE"
    elsif player.shape == "rock" && computer.random_shape == "scissors"
      return "YOU WON"
    elsif player.shape == "paper" && computer.random_shape == "rock"
      return "YOU WON"
    elsif player.shape == "scissors" && computer.random_shape == "paper"
      return "YOU WON"
    else
      return "YOU LOST"
    end
  end
end