class Game
  def initialize(player_choice, computer_choice)
    @player_choice = player_choice
    @computer_choice = computer_choice
  end

  def game_result
    if @player_choice == "Rock" && @computer_choice == "Scissors"
      return "Win"
    elsif @player_choice == "Rock" && @computer_choice == "Paper"
      return "Lose"
    elsif @player_choice == "Paper" && @computer_choice == "Rock"
      return "Win"
    elsif @player_choice == "Paper" && @computer_choice == "Scissors"
      return "Lose"
    elsif @player_choice == "Scissors" && @computer_choice == "Paper"
      return "Win"
    elsif @player_choice == "Scissors" && @computer_choice == "Rock"
      return "Lose"
    else
      return "Draw"
    end
  end
end