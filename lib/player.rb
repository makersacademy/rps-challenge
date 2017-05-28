require_relative 'game'

class Player
  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def choose_weapon(type)
    @weapon = Game::WEAPONS.sample
  end
end
