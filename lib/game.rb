class Game

  attr_reader :result, :computer_choice, :player_choice

  def initialize(player_choice)
    @player_choice = player_choice
    @result = result
    @computer_choice = ['rock','paper','scissors'].sample

  end

  def computer_choice
    @computer_choice
  end

  def play
    if computer_choice == @player_choice
     "It was a draw"
   elsif (computer_choice == "rock" && @player_choice == "paper") || (computer_choice == "paper" && @player_choice == "scissors") || (computer_choice == "scissors" && @player_choice == "rock")
     "You won"
    else
     "The computer won"
    end
 end


end
