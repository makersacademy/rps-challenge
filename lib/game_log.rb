class GameLog
  attr_reader :score, :games

  def initialize
    @games = []
    @score = { player: 0, computer: 0 }
  end

  def add_game(player_move, computer_move, result)
    @games << [player_move, computer_move, result]
    get_score(result)
  end

  def game_over?
    true if @score[:player] == 10 || score[:computer] == 10
  end

  def end_message
    if @score[:player] > @score[:computer]
      "YOU ARE THE CHAMPION!!!\nYou've won a cash prize of $100,000 subject to t & cs"
    else
      "GAME OVER\nYou are a loser :( :( :("
    end
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
