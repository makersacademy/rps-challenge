require_relative 'computer'
require_relative 'player'

class Game

  WEAPONS = [:rock, :paper, :scissors]
  attr_reader :weapons, :computer, :player

  def initialize(weapons = WEAPONS, computer, player)
    @weapons = weapons
    @computer = computer
    @player = player
  end

  def results
  end

end
