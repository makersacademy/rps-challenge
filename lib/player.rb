require './lib/game.rb'

class Player

attr_accessor :player_name
attr_reader :weapon

  def initialize(name)
    @player_name = name
  end

  def choose(weapon)
    @weapon = weapon
  end

end
