require_relative 'player'
require_relative 'machine'

class Game
  attr_reader :weapon, :player, :machine

  def initialize(player, weapon, machine=Machine.new)
    @player = player
    @weapon = weapon
    @machine = machine.random_rps
  end

  def outcomes
  end

end
