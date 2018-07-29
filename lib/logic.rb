#perhaps move this into it's own class, but works for this project. 
def find_winner(p1,p2)
    if p1 == p2 then winner = "it's a draw"
    elsif p1 == "rock"
      p2 == "scissors" ? 
        winner = "You win" : winner = "You lose"
    elsif p1 == "paper"
      p2 == "rock" ? winner = "You win" : winner = "You lose"
    elsif p1 == "scissors"
      p2 == "paper" ? winner = "You win" : winner = "You lose"
      end 
  end 


