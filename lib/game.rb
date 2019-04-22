require_relative 'player'

class Game
  attr_reader :player, :console

  def initialize(player = Player.new, console = Console.new)
    @player = player
    @console = console
  end
end
