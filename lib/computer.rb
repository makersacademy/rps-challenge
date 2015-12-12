require_relative 'game'

class Computer

  attr_reader :weapon_choice

  def choose_weapon
    @weapon_choice = Game::WEAPONS.sample
  end

end
