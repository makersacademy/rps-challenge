require_relative './player.rb'
require_relative './computer.rb'

class Game

  attr_accessor :result

  WEAPONS = [:paper, :scissors, :rock]

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def weapons
    @p1_weapon = @player_1.weapon.to_sym
    @p2_weapon = @player_2.weapon.to_sym
  end

  def determine_result
    return :draw if @p1_weapon == @p2_weapon
    return :lose if @p1_weapon == WEAPONS[WEAPONS.index(@p2_weapon)-1]
    :win
  end

end