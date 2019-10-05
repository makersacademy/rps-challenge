class Result

   def initialize(choice)
     @options = ["Rock", "Scissors", "Paper"]
     @computer_choice = @options.sample
     @user_choice = choice
   end

   def outcome
     if @computer_choice == @user_choice
      "You said #{@user_choice}. Computer said #{@computer_choice}. You drew!"
     elsif  @options[@options.index(@user_choice) - 1] == @options[@options.index(@computer_choice)] # if the user puts rock this makes the index the same for paper which meams the computer wins
       "You said #{@user_choice}. Computer said #{@computer_choice}. Computer won!"
     else
       "You said #{@user_choice}. Computer said #{@computer_choice}. You won!"
     end
   end
end
