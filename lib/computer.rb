class Computer

attr_reader :player_selection, :computer_selection

  def initialize
    @player_selection = player_selection
    @computer_selection = computer_selection
  end

  def computer_selection
    computer_selection = ['rock', 'paper', 'scissors'].sample
  end

  def winner(computer_selection, player_selection)
    if @computer_selection == @player_selection
      "Draw!"
    elsif @computer_selection == "rock" && @player_selection == "Scissors"
      "You lose!"
    elsif @computer_selection == "paper" && @player_selection == "Rock"
      "You lose!"
    elsif @computer_selection == "scissors" && @player_selection == "Paper"
      "You lose!"
    else
      "You win!"
    end
end
end
