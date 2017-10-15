class Game
  MIN_PLAYERS = 2

  attr_reader :players, :current_player, :player_count

  def initialize(players)
    @players = players
    @current_player = @players[0]
    @player_count = MIN_PLAYERS
  end

  def turn(selection)
    @current_player = @players[1]
  end
end
