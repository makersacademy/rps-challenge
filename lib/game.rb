class Game

  attr_reader :result, :player_choice, :computer_player

  def initialize(player_choice)
    @player_choice = player_choice
    @result = result
    @choices = ["rock","paper","scissors"]
    @computer_player

  end

  def computer_choice
  @computer_player = @choices.sample
  end



  def player_choice
  @player_choice

  end

  def computer_player
    @computer_player
  end


  def play
  computer_choice
    if @computer_player == @player_choice
     "It was a draw"
   elsif (@computer_player == "rock" && @player_choice == "paper") || (@computer_player == "paper" && @player_choice == "scissors") || (@computer_player == "scissors" && @player_choice == "rock")
     "You won"
    else
     "The computer won"
    end
 end


end
