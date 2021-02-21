class GameLog
  def initialize
    @games = []
  end

  def games
    @games
  end

  def add_game(player_move, computer_move, result)
    @games << [player_move, computer_move, result]
  end

  def show_game
    "You picked #{@games.last.first}, the computer picked #{@games.last[1]}"
  end

end
