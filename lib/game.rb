class Game
  attr_reader :player_name, :player_selection, :game_selection
  def initialize(name)
    @player_name = name
  end
  
  def player_move(selection)
    @player_selection = selection
  end

  def game_move
    @game_selection = choose
  end

  def force_move(selection)
    @game_selection = selection
  end
  
  def play_game
    x = @player_selection
    y = @game_selection
    if x == "Rock" && y == "Scissors" || x == "Paper" && y == "Rock" || x == "Scissors" && y == "Paper"
      return "Win!"
    elsif x == "Rock" && y == "Paper" || x == "Paper" && y == "Paper" || x == "Scissors" && y == "Rock"
      return "Lose!"
    else  
      return "Draw!"
    end
  end

  private

  def choose
    return ["Rock", "Paper", "Scissors"].sample
  end
end
