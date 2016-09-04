#Understands how to play the game of RPS

require_relative 'player'
require_relative 'computer'

class Game

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def choose_weapon(weapon)
    @player.pick_weapon(weapon)
  end

  def computer_choice
    @computer.weapon_assignment
  end

end
