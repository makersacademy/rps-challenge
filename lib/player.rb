class Player
  ERROR_MESSAGE = 'Invalid weapon'
  attr_reader :name, :weapon

  def initialize(name)
    @name = name
    @weapon = nil
  end

  def choose_weapon(weapon)
    raise ERROR_MESSAGE unless Game::WEAPONS.include? weapon
    @weapon = weapon
  end
end
