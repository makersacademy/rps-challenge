require_relative 'player' 

class Game

  attr_reader :player, :computer

  WEAPONS = [:rock, :paper, :scissors]

  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer
  end

end
