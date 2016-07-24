require_relative "player.rb"
require_relative "computer.rb"

class Game

  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end
end
