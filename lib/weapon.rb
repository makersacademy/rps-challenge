class Weapon
  attr_reader :weapon

  def initialize(weapon)
    @weapon = weapon.capitalize
  end

  def weapon=(weapon)
    fail 'Please select Rock, Paper or Scissors' unless Game::WEAPONS.include? weapon.downcase.to_sym
    @weapon = weapon
  end
end
