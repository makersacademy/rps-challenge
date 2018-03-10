require_relative './game.rb'

class Computer

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
    @weapon = random_weapon
  end

  def random_weapon
    Game::WEAPONS.sample
  end
end
