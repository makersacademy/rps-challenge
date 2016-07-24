require_relative './weapon.rb'

class Player
attr_reader :name, :weapon
  def initialize(name)
    @name = name
  end

  def choose(weapon)
    @weapon = Weapons::CHOICES[weapon.to_sym]
  end
end
