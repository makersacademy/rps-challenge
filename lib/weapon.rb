class Weapon

  HAND = [:rock, :scissors, :paper]

  attr_reader :hand, :choosen

  def initialize
    @hand = HAND
  end

  def choose_rand_weapon
    @hand = HAND.sample
  end

  def choose_weapon(weapon)
    raise 'Cannot choose this weapon: weapon not present' if !weapon_is_present?(weapon)
    @choosen = weapon
  end

  private

  def weapon_is_present?(weapon)
    @hand.include?(weapon)
  end

end
