require_relative 'game'

class Computer
  attr_reader :name, :weapon

  def initialize
    @weapon = auto_choose
    @name = 'Computer'
  end

  def weapon_value
    Game::WEAPONS[@weapon]
  end

  private

  def auto_choose
    Game::WEAPONS.keys.sample
  end

end
