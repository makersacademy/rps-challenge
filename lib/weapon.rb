class Weapon

  HAND = [:rock, :scissors, :paper]

  attr_reader :hand, :choosen


  def choose_rand_weapon
    HAND.sample
  end

  def choose_weapon(weapon)
    error_message = 'Cannot choose this weapon: weapon not present'
    raise error_message unless weapon_is_present?(weapon)
    self.choosen = weapon
  end

  private
  attr_writer :choosen

  def weapon_is_present?(weapon)
    HAND.include?(weapon)
  end

end
