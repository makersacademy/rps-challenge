class Battle
  attr_reader :player_choice, :computer_choice

  def initialize(player_choice, computer_choice)
    @player_choice = player_choice
    @computer_choice = computer_choice
  end

  def result
  if (@player_choice == @computer_choice)
  puts "WERE THE SAME, PLAY AGAIN"
   elsif (@player_choice == "rock" && @computer_choice == "scissors")
     puts :WIN
   elsif (@player_choice == "rock" && @computer_choice == "paper")
     puts :LOSE
   elsif (@player_choice == "paper" && @computer_choice == "scissors")
     puts :LOSE
   elsif (@player_choice == "paper" && @computer_choice == "rock")
     puts :WIN
   elsif (@player_choice == "scissors" && @computer_choice == "rock")
     puts :LOSE
   elsif (@player_choice == "scissors" && @computer_choice == "paper")
     puts :WIN
  end
 end
end
