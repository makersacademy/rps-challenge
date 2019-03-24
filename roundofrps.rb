require "./app.rb"
require "./randomchoice.rb"
class RoundofRPS
  attr_accessor :name, :choice

  def initialize(player_choice, computer_choice)
    # @name = name
    # @choice = choice
    # @computer = []
    # @result = []
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
  return 2

else
  return 0
end
end
