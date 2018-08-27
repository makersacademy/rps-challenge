class Game

  attr_reader :players_choice, :games_choice

  def initialize(players_choice)
    @players_choice = players_choice
    @games_choice = ["Rock", "Paper", "Scissors"].sample
  end

  def determine_result
    if @players_choice == "Rock" && @games_choice == "Scissors"
      "You win"
    elsif @players_choice == "Paper" && @games_choice == "Rock"
      "You win"
    elsif @players_choice == "Scissors" && @games_choice == "Paper"
      "You win"
    elsif @players_choice == @games_choice
      "It's a draw"
    else
      "You lose"
    end
  end

end
