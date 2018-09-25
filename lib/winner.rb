class Winner

  attr_reader :user_chooses, :computer_chooses

  def initialize(user_chooses, computer_chooses)
    @user_chooses = user_chooses
    @computer_chooses = computer_chooses
  end

#   def who_wins
#     if @user_chooses == "rock" && @computer_chooses == "scissors" ||
#       @user_chooses == "paper" && @computer_chooses == "rock" ||
#       @user_chooses == "scissors" && @computer_chooses == "paper"
#       return "You won!!!"
#     elsif @computer_chooses == "rock" && @user_chooses == "scissors" ||
#       @computer_chooses == "paper" && @user_chooses == "rock" ||
#       @computer_chooses == "scissors" && @user_chooses == "paper"
#       return "I won!!!"
#     elsif @user_chooses == @computer_chooses
#       return 'It\'s a tie!'
#     end
#   end
# end


  def who_wins
    game = { "rock" => "scissors", "paper" => "rock", "scissors" => "paper" }
      if game[@user_chooses] == @computer_chooses
        return "You won!!!"
      elsif game[@computer_chooses] == @user_chooses
        return "I won!!!"
      elsif @user_chooses == @computer_chooses
        return "It\'s a tie!"
      else
        "You have to choose either rock, paper or scissors to play!"
      end
  end

end
