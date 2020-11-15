class Rps 
  

  def cpu_choice
    choices = ["Rock", "Paper", "Scissors"]
    choices.sample
  end

  def compare(user_choice)
    cpu = cpu_choice

    if(user_choice == "Rock" && cpu == "Scissors") 
      return "You win" 
    elsif(user_choice == "Rock" && cpu == "Paper") 
      return "Computer wins :(" 
    elsif(user_choice == "Paper" && cpu == "Scissors") 
      return "Computer wins :(" 
    elsif(user_choice == "Paper" && cpu == "Rock") 
      return "You win" 
    elsif(user_choice == "Scissors" && cpu == "Rock") 
      return "Computer wins :(" 
    elsif(user_choice == "Scissors" && cpu == "Paper") 
      return "You win" 
    else 
      return "It's a tie!" 
    end  
  end

end