class Result

  attr_accessor :computer_wins, :draw, :user_wins, :outcome, :options

   def initialize(choice)
     @options = ["Rock", "Scissors", "Paper"]
     @computer_choice = @options.sample
     @user_choice = choice
     @user_index = @options.index(@user_choice)
     @computer_index = @options.index(@computer_choice)
   end

   def outcome
     if @computer_choice == @user_choice
       @draw = "You said #{@user_choice}. Computer said #{@computer_choice}. You drew!"
       @draw
     elsif  @options[@user_index - 1] == @options[@computer_index] # if the user puts rock this makes the index the same for paper which meams the computer wins
       @computer_wins = "You said #{@user_choice}. Computer said #{@computer_choice}. Computer won!"
       @computer_wins
     else
       @user_wins = "You said #{@user_choice}. Computer said #{@computer_choice}. You won!"
       @user_wins
     end
   end
end
