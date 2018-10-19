class Game
DEFAULT_WINS = 0

  def initialize(name, wins = DEFAULT_WINS)
    @name = name
    @wins = wins
  end

  def win(player)
    player.win_point
  end

  def player_1_turn

  end

end
