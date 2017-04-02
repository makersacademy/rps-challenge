 # Executes the game.
require_relative 'computer'

class Game

  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def computer_wins
    "Computer wins!"
  end

  def player_wins
    player.name + " wins!"
  end

  def lets_play
    if player.choice == computer.choice
      "It's a tie!"
    elsif player.choice == "rock" && computer.choice == "scissors"
      player_wins
    elsif player.choice == "rock" && computer.choice == "paper"
      computer_wins
    elsif player.choice == "paper" && computer.choice == "scissors"
      computer_wins
    elsif player.choice == "paper" && computer.choice == "rock"
      player_wins
    elsif player.choice == "scissors" && computer.choice == "paper"
      player_wins
    else player.choice == "scissors" && computer.choice == "rock"
      computer_wins
    end
  end
end
