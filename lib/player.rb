class Player
  ARGUMENT_ERROR_MSG = 'Invalid weapon'
  attr_reader :name, :weapon

  def initialize(name)
    @name = name
    @weapon = nil
  end

  def choose_weapon(weapon)
    weapon = weapon.to_sym
    raise ARGUMENT_ERROR_MSG unless Game::WEAPONS.include? weapon
    @weapon = weapon
  end
end
