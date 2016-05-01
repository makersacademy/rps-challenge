
class Player

  attr_reader :name, :weapon_choice

  def initialize(name, weapon)
    @name = name
    @weapon_choice = weapon
  end
  def weapon=(weapon_choice)
    fail 'not a vaild weapon' unless Round::Weapons.include? weapon_choice.capitalize
    @weapon = weapon_choice
  end
end
