class GameWeapons

  attr_reader :weapons

  def initialize()
    @weapons = {}
  end

  def add_weapon(weapon)
    @weapons.merge!(weapon)
  end

  def weapon_text(weapon)
    weapons[weapon]
  end

  def random_weapon
    rand_key = weapons.keys.sample
    weapons[rand_key]
  end

  def select_weapon(weapon)
    if weapons.has_key?(weapon)
      weapons[weapon]
    else
      raise "Can't select that weapon"
    end
  end

end