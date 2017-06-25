require './lib/game.rb'

class Player

  attr_reader :name, :weapon

  def initialize(name)
    @name = name
  end

  def weapon=(choice)
    choice = choice.downcase.to_sym
    fail "This weapon is not valid" unless Game::WEAPONS.include? choice
    @weapon = choice
  end
end
