

class Player
  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def weapon=(weapon)
    fail 'not a possible weapon' unless Game::WEAPONS.include? weapon
    @weapon = weapon
  end
  
end