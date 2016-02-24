require_relative 'game'

class Computer

  attr_reader :weapon

  def initialize
    @weapon = Game::WEAPONS.sample
  end

end
