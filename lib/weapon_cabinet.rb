class WeaponCabinet
  attr_reader :arsenal

  def initialize(weapon_class = Weapon)
    @arsenal = [
      weapon_class.new(:Rock),
      weapon_class.new(:Paper),
      weapon_class.new(:Scissors)
    ]
  end

  def release(wanted_weapon)
    @arsenal.each do |stored_weapon|
      return stored_weapon if stored_weapon.name == wanted_weapon.to_sym
    end
  end
end
