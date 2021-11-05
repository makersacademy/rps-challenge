require './lib/player'
require './lib/computer'

class Game
  attr_reader :players
  CHOICES = ['Rock', 'Paper', 'Scissors']

  def initialize(player, computer)
    @players = [player, computer]
  end

  def player
    @players.first
  end

  def computer
    @players.last
  end

  def play
    
  end

  def result
    if (player.choice == computer.pc_choice)
      "It is a draw!"
    elsif (player.choice == 'Rock' && computer.pc_choice == 'Scissors') ||
      (player.choice == 'Scissors' && computer.pc_choice == 'Paper') ||
      (player.choice == 'Paper' && computer.pc_choice == 'Rock')
      "You WON!"
    else
      "You LOST!"
    end
  end
end