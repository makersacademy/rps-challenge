require_relative 'player'

class Game

  attr_reader :player, :computer

  COMPUTER_DEF = "computer"

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

end
