require_relative './game'

class Computer 

  attr_reader :name, :weapon

  def initialize
    @name = "Computer"
  end

  def choose
    @weapon = Game::WEAPONS.sample
  end

end
