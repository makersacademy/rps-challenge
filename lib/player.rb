class Player
  ARGUMENT_ERROR_MSG = 'Invalid weapon'
  attr_reader :name, :weapon

  def initialize(name, weapon_klass = Weapon)
    @name = name
    @weapon_klass = weapon_klass
    @weapon = nil
  end

  def choose_weapon(weapon)
    weapon = weapon.to_sym
    raise ARGUMENT_ERROR_MSG unless Game::WEAPONS.include? weapon
    @weapon = weapon_klass.new(weapon)
  end

  private
  attr_reader :weapon_klass
end
