require_relative 'player'
require_relative 'computer'

class Game

  WEAPONS = [:rock, :paper, :scissors]

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def player_select=(weapon)
    @player_selection = weapon.to_sym
  end

  def computer_select
    @computer_weapon = WEAPONS.sample
  end

  # def result
  #   RULES[player_select][computer_select()] ? :win : :lose
  # end

end
