require_relative 'player'
require_relative 'computer'

class Game
  WEAPONS = [:rock, :paper, :scissors]
  RULES = { rock:     :scissors,
            paper:    :rock,
            scissors: :paper }

  attr_reader :player_1, :player_2

  def initialize(player_1 = Player.new, player_2 = Computer.new)
    @player_1 = player_1
    @player_2 = player_2
  end

  def result
    return :win if better_weapon?
    return :draw if same_weapons?
    :lose
  end

  private
  
  def same_weapons?
    player_1.weapon == player_2.weapon
  end

  def better_weapon?
    RULES[player_1.weapon] == player_2.weapon
  end

end
