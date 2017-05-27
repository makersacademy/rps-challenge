class Player
  attr_accessor :weapon, :name

  def initialize(name)
    @name = name
  end

  def weapon=(weapon)
    validate_weapon(weapon)
    @weapon = weapon
  end

  private

  def validate_weapon(weapon)
    raise 'Not valid weapon' unless Game::WEAPONS.include?(weapon)
  end

end
