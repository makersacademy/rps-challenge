class GameLog
  attr_reader :score, :games, :first_to
  FIRST_TO = 10

  def initialize(first_to = FIRST_TO)
    @games = []
    @score = { player: 0, computer: 0 }
    @first_to = first_to
  end

  def add_game(options)
    @games << options
    get_score(options[:result])
  end

  def game_over?
    true if @score[:player] == @first_to|| score[:computer] == @first_to
  end

  def end_message
    if @score[:player] > @score[:computer]
      "YOU ARE THE CHAMPION!!!\nYou've won a cash prize of $100,000 subject to t & cs"
    else
      "GAME OVER\nYou are a loser :( :( :("
    end
  end

  def show_game
    "You picked #{@games.last[:player_move]}, the computer picked #{@games.last[:computer_move]}"
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
