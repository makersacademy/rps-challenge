class Computer < Player
  def choose_weapon
    @weapon_choice = Weapon::WEAPONS.sample
  end
end
