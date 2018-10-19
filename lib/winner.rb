class Winner
  def determine(game, user)
    return won if game == "rock" && user == "paper"
    return lost if game == "rock" && user == "scissors"
    return draw if game == "rock" && user == "rock"
    return lost if game == "paper" && user == "rock"
    return draw if game == "paper" && user == "paper"
    return won if game == "paper" && user == "scissors"
    return won if game == "scissors" && user == "rock"
    return lost if game == "scissors" && user == "paper"
    return draw if game == "scissors" && user == "scissors"
  end

  def won
    "You won!"
  end

  def lost
    "You lost!"
  end

  def draw
    "It's a draw!"
  end

end
