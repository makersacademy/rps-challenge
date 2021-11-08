class Game

  attr_accessor :result

  WEAPONS = [:paper, :scissors, :rock]

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def determine_result(p1_weapon, p2_weapon)
    return :draw if p1_weapon == p2_weapon
    return :lose if p1_weapon == WEAPONS[WEAPONS.index(p2_weapon)-1]
    :win
  end

end