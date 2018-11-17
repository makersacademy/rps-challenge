require 'weapon'

class Player
  attr_reader :name, :weapon_choice

  def initialize(player_name)
    @name = player_name
  end

  def choose_weapon(weapon)
    @weapon_choice = weapon.type
  end
end
