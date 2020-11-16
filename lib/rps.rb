class Rps 
  

  def cpu_choice
    choices = ["Rock", "Paper", "Scissors"]
    choices.sample
  end

  def compare(user_choice, cpu_move)

    if(user_choice == "Rock" && cpu_move == "Scissors") 
      return "You win" 
    elsif(user_choice == "Rock" && cpu_move == "Paper") 
      return "Computer wins :(" 
    elsif(user_choice == "Paper" && cpu_move == "Scissors") 
      return "Computer wins :(" 
    elsif(user_choice == "Paper" && cpu_move == "Rock") 
      return "You win" 
    elsif(user_choice == "Scissors" && cpu_move == "Rock") 
      return "Computer wins :(" 
    elsif(user_choice == "Scissors" && cpu_move == "Paper") 
      return "You win" 
    else 
      return "It's a tie!" 
    end  
  end

end