require_relative 'game'

class Computer

attr_reader :weapon

  def initialize
    @weapon = nil
  end

  def weapon_select
    @weapon = Game::WEAPONS.sample
  end

end
