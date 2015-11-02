class Player
  attr_reader :name

  def initialize(name, weapon=Weapon.new)
    @name = name
    @weapons = weapon
  end

  def user_choose_weapon(weapon)
    weapons.choose_weapon(weapon)
  end

  private

  attr_reader :weapons

end
