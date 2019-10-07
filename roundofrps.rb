require "./app.rb"
class RoundofRPS
  attr_accessor :name, :choice

  def initialize(player_choice)
    @player_choice = player_choice
    @computer_choice = ["rock", "paper", "scissors"].sample
  end

if player_choice == computer_choice
  result = 0

elsif player_choice == "rock" && computer_choice == "scissors"
  result = 1

elsif player_choice == "rock" && computer_choice == "paper"
  result = 2

elsif player_choice == "scissors" && computer_choice == "rock"
  result = 2

elsif player_choice == "scissors" && computer_choice == "paper"
  result = 1

elsif player_choice == "paper" && computer_choice == "scissors"
  result = 2

else
  result = 1
end

if result == 1
  return "You win, darling!"

elsif result == 2
  return "Computer wins!"

else
  return "It's a draw!"
end
end
