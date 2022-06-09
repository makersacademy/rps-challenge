class Game

  attr_reader :player_choice, :computer_choice

  def initialize(player_choice, computer_choice)
    @player_choice = player_choice
    @computer_choice = computer_choice
  end

  def game_result
    if @player_choice == "Rock" && @computer_choice == "Scissors"
      return :win
    elsif @player_choice == "Rock" && @computer_choice == "Paper"
      return :lose
    elsif @player_choice == "Paper" && @computer_choice == "Rock"
      return :win
    elsif @player_choice == "Paper" && @computer_choice == "Scissors"
      return :lose
    elsif @player_choice == "Scissors" && @computer_choice == "Paper"
      return :win
    elsif @player_choice == "Scissors" && @computer_choice == "Rock"
      return :lose
    else
      return :draw
    end
  end
end