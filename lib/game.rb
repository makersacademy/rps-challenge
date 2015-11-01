require 'forwardable'

class Game
  extend Forwardable

  def_delegator :computer, :computer_choice, :computer_weapon_choice

  attr_reader :player, :computer

  RULES = { rock: [:scissors, :lizard],
            paper: [:lizard, :rock],
            scissors: [:paper, :lizard],
            spock: [:scissors, :rock],
            lizard: [:spock, :paper] }


  def initialize(player, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def result
    return :draw if draw?
    win? ? :win :(:lose)
  end

  private

  def draw?
    @player.player_weapon == @computer.computer_choice
  end

  def win?
    RULES[@player.player_weapon].include?(@computer.computer_choice)
  end

end
