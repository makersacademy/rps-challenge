require_relative 'player'
class Game

  attr_reader :player

  def initialize(player)
    @player = player
  end

  def assign(player)
    self.player = player
  end

  private

  attr_writer :player

end
