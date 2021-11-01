require_relative './player.rb'

class Computer < Player

  attr_reader :name

  def initialize(name=nil)
    @name = name
  end

  def player_weapon
    Game::WEAPONS[rand(0..2)]
  end

end