 # Executes the game.

require_relative 'computer'

class Game
  include Computer

  attr_reader :player

  def initialize(player)
    @player = player
  end

  def lets_play
  if player.choice == Computer::choice
    "It's a tie!"
  elsif player.choice == "rock" && Computer::choice == "scissors"
    "Player wins!"
  elsif player.choice == "rock" && Computer::choice == "paper"
    "Computer wins!"
  elsif player.choice == "paper" && Computer::choice == "scissors"
    "Computer wins!"
  elsif player.choice == "paper" && Computer::choice == "rock"
    "Player wins!"
  elsif player.choice == "scissors" && Computer::choice == "paper"
    "Computer wins!"
  else player.choice == "scissors" && Computer::choice == "rock"
      "Player wins!"
    end
  end
end
