class GameLog

  def initialize
    @games = []
    @score = { player: 0, computer: 0 }
  end

  def games
    @games
  end

  def score
    @score
  end

  def add_game(player_move, computer_move, result)
    @games << [player_move, computer_move, result]
    get_score(result)
  end

  def show_game
    "You picked #{@games.last.first}, the computer picked #{@games.last[1]}"
  end

  private

  def get_score(result)
    if result == :win
      @score[:player] += 1
    elsif result == :loss
      @score[:computer] += 1
    end
  end

end
