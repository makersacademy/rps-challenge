require_relative 'game'

class Computer

  attr_reader :weapon_choice, :name

  def initialize
    @name = "The Computer"
  end

  def choose_weapon
    @weapon_choice = Game::WEAPONS.sample
  end

end
