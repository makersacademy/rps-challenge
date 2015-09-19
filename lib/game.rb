class Game

  attr_reader :result, :player_choice

  def initialize(player_choice)
    @player_choice = player_choice
    @result = result
    @choices = ["rock","paper","scissors"]

  end

  def computer_choice
  @choices.sample

  end


  def player_choice
  @player_choice

  end

  def play
    computer = computer_choice
    p computer
    p player_choice
    if computer == player_choice
     puts "It was a draw"
   elsif (computer == "rock" && player_choice == "paper") || (computer == "paper" && player_choice == "scissors") || (computer == "scissors" && player_choice == "rock")
     "You won"
    else
     "The computer won"
    end
 end


end
