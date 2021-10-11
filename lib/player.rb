require_relative 'game'

class Player
  attr_reader :name, :lives, :weapon_of_choice
  DEFAULT_LIVES = 1

  def initialize(name)
    @name = name
    @lives = DEFAULT_LIVES
    @weapon_of_choice = nil
  end

  def choose_weapon(weapon)
    @weapon_of_choice = weapon
  end

end
