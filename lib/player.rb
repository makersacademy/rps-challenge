require_relative 'game'
require_relative 'trump'

class Player

attr_reader :name, :weapon_choice

  def initialize(name)
    @name = name
    @weapon_choice = nil
  end

  def choose_weapon(weapon)
    @weapon_choice = weapon.to_sym
  end

end
