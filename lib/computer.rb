require_relative './player.rb'

class Computer < Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
    @weapon = weapon_rand
  end

  def weapon_rand
    Game::WEAPONS[rand(0..2)]
  end

end