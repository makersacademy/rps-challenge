require_relative '../lib/weapon'

class Game
  attr_reader :player_1_weapon, :computer_choice

  WEAPONS = [:rock, :paper, :scissors]

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def initialize(player_1_weapon, computer_choice)
    @player_1_weapon = player_1_weapon
    @computer_choice = computer_choice
  end

  def wins?
    RULES[player_1_weapon.downcase.to_sym]==(computer_choice.downcase.to_sym)
  end

  def draw?
    player_1_weapon == computer_choice
  end

  def result
    if draw?
      :draw
    elsif wins?
      :win
    else
      :lose
    end
  end
end
