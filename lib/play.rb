require 'weapon'
class Play
  def initialize(weapon_1, weapon_2)
    @weapon_1 = weapon_1
    @weapon_2 = weapon_2
  end

  def result
    battle_result = Weapon.calc_winning_weapon(@weapon_1, @weapon_2)
    return 'You drew' if battle_result.nil?
    return 'You won' if battle_result == @weapon_1
    return 'You lost'
  end
end
