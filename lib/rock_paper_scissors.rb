require_relative 'randomiser'

class RockPaperScissors
  attr_reader :user_choice, :randomiser, :computer_choice

  def initialize(user_choice)
    @user_choice = user_choice
    @randomiser = Randomiser.new
    @computer_choice = @randomiser.computer_choice
  end

  def who_wins?
    if @user_choice == @computer_choice
      return "tie"
    elsif @user_choice == "Rock" and @computer_choice == "Scissors"
      return "user"
    elsif @user_choice == "Paper" and @computer_choice == "Rock"
      return "user"
    elsif @user_choice == "Scissors" and @computer_choice == "Paper"
      return "user"
    elsif @user_choice == "Rock" and @computer_choice == "Paper"
      return "computer"
    elsif @user_choice == "Paper" and @computer_choice == "Scissors"
      return "computer"
    elsif @user_choice == "Scissors" and @computer_choice == "Rock"
      return "computer"
    end
  end
end
