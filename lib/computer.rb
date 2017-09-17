require_relative 'game'

class Computer

  attr_reader :name, :weapon

  def initialize(name = "Computer")
    @name = name
  end

  def weapon_choice
    @weapon = Game::WEAPONS.sample
  end

end
