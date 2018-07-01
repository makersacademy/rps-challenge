require_relative 'computer'
require_relative 'player'

class Game
  attr_reader :player_choice, :computer_choice
  RULES = { rock: :scissors,
            scissors: :paper,
            paper: :rock }
  def initialize(player_1, computer)
    @player = player_1
    @computer = computer
  end

  def player_1
    @player
  end

  def player_action(weapon)
    @player_choice = @player.weapon(weapon)
  end


  def computer_action
    @computer_choice = @computer.weapon
  end

  # def result
  #   RULES[player_action][computer_action]
  # end
end
