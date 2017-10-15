class Game
  MIN_PLAYERS = 2
  MAX_PLAYERS = 4

  attr_reader :players, :player_count

  def initialize(*players)
    @players = players
    @player_count = MIN_PLAYERS
  end
end
