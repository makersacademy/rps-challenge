require_relative 'game'

class Opponent

  attr_reader :weapons
  attr_accessor :weapon

  def initialize
    @weapons = Game::WEAPONS
  end

  def choose_weapon
    self.weapon = weapons.sample
  end

  def add_weapon(weapon)
    weapons << weapon
  end

end
