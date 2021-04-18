# session[:choice], session[:ai_choice]

class Judge
  def winner(p1,p2)
    if p1 == p2 && ["scissors","paper","rock"].include?(p1)
      "neither"
    elsif p1 == "scissors" && p2 == "paper"
      "player 1"
    elsif p1 == "paper" && p2 == "rock"
      "player 1"
    elsif p1 == "rock" && p2 == "scissors"
      "player 1"
    elsif p1 == "paper" && p2 == "scissors"
      "player 2"
    elsif p1 == "rock" && p2 == "paper"
      "player 2"
    elsif p1 == "scissors" && p2 == "rock"
      "player 2"
    else
      raise ("invalid inputs!")
    end
  end
end
