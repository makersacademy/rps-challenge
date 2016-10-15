require_relative 'player'

class Game
  attr_reader :player1

  def initialize(player1)
    @player1 = Player.new(player1)
  end
end
