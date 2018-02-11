require_relative 'player'

class Game

  attr_reader :player, :computer

  def initialize(player, *computer)
    @player = Player.new(player)
    @computer = Player.new
  end
end
