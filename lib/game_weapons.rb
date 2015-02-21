class GameWeapons

  attr_reader :weapons

  def initialize()
    @weapons = [:rock, :paper, :scissors]
  end


  def random_weapon
    rand_key = weapons.keys.sample
    weapons[rand_key]
  end

  def select_weapon(weapon)
    if weapons.include?(weapon)
      return weapon
    else
      raise "Can't select that weapon"
    end
  end

end