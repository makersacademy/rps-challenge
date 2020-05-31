class Result
  attr_reader :player_choice, :computer_choice, :player_name, :result

  def initialize(computer_choice, player_choice, player_name)
    @player_choice = player_choice
    @computer_choice = computer_choice
    @player_name = player_name
  end

  def run_game
    if @player_choice == @computer_choice
      "It's a Draw!"
    elsif @player_choice == "Rock" && @computer_choice == "Scissors"
      "#{@player_name} Wins! - Rock beats Scissors!"
    elsif @player_choice == "Scissors" && @computer_choice == "Paper"
      "#{@player_name} Wins! - Scissors beats Paper!"
    elsif @player_choice == "Paper" && @computer_choice == "Rock"
      "#{@player_name} Wins! - Paper beats Rock!"
    else
      "Sorry #{@player_name}, You Lost"
    end
  end
end
