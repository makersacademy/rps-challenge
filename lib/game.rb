class Game
  attr_reader :player, :random_move
  def initialize(player)
    @player = player
    @random_move = nil
  end
end
