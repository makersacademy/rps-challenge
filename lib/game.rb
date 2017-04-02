require_relative 'player'
class Game

  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def assign(player)
    self.player = player
  end

  private

  attr_writer :player

end
