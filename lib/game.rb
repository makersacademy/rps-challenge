class Game

  attr_reader :players_choice, :computers_choice

  def initialize(players_choice)
    @players_choice = players_choice
    @computers_choice = ["Rock", "Paper", "Scissors"].sample
  end

  def determine_result
    if @players_choice == "Rock" && @computers_choice == "Scissors"
      "Man wins"
    elsif @players_choice == "Paper" && @computers_choice == "Rock"
      "Man wins"
    elsif @players_choice == "Scissors" && @computers_choice == "Paper"
      "Man wins"
    elsif @players_choice == @computers_choice
      "It's a draw"
    else
      "Computer wins"
    end
  end

end
