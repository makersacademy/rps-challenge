class Game

  attr_reader :current_player, :players

  def initialize(player)
    @player = player
    @current_player = player
  end

  def player1
    players.first
  end

end
