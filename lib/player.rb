class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end
  def weapon=(weapon)
    fail 'not a vaild weapon' unless Round::Weapons.includes? weapon.capitalize
    @weapon = weapon
  end
end
