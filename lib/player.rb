require_relative './weapon.rb'

class Player
attr_reader :name, :weapon
  def initialize(name, weapons: Weapons)
    @name = name
    @arsenal = weapons
  end

  def choose(weapon)
    @weapon = @arsenal::CHOICES[weapon.to_sym]
  end
end
