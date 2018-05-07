class Player
  attr_reader :weapon, :name

  def initialize(name)
    @name = name
  end

  def weapon=(weapon)
    fail 'This is not a possible weapon' unless Game::WEAPONS.include? weapon.to_sym
    @weapon = weapon.to_sym
  end

end
