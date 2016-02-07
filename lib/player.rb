require 'game'

class Player
  attr_reader :name, :weapon

  def initialize(selection, name)
    @weapon = selection
    @name = name
  end

  def weapon_value
    Game::WEAPONS[@weapon]
  end

  private


end
