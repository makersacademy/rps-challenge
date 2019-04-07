require './app'

class Game

  def initialize(human_player, computer_player)
    @human_player = human_player
    @computer_player = computer_player
  end

  def check_result
    if @human_player == @computer_player
      return "Stalemate... Victory eludes you both"
    elsif @human_player == "Rock" && @computer_player == ("Scissors" || "Lizard")
      return "You are Victorious!"
    elsif @human_player == "Paper" && @computer_player == ("Rock" || "Spock")
      return "You are Victorious!"
    elsif @human_player == "Scissors" && @computer_player == ("Paper" || "Lizard")
      return "You are Victorious!"
    elsif @human_player == "Spock" && @computer_player == ("Scissors" || "Rock")
      return "You are Victorious!"
    elsif @human_player == "Lizard" && @computer_player == ("Spock" || "Paper")
      return "You are Victorious!"
    else
      return "The Dark Web o.0 has defeated you!"
    end
  end

end
