require_relative 'moves'
require_relative 'player'
class Game

  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def winner
    if player.move == "Rock" && computer.move == "Scissors"
      player.name
    elsif player.move == "Paper" && computer.move == "Rock"
      player.name
    elsif player.move == "Scissors" && computer.move == "Paper"
      player.name
    elsif player.move == computer.move
      "You drew everybody"
    elsif computer.move == "Rock" && player.move == "Scissors"
      player.name
    elsif computer.move == "Paper" && player.move == "Rock"
      player.name
    elsif computer.move == "Scissors" && player.move == "Paper"
      computer.name
    else
      "There was an error, no one"
    end
  end

end
