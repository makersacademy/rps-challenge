class Winner
  def determine(game, user)

    if game == "rock" && user == "paper"
      "You won!"
    elsif game == "rock" && user == "scissors"
      "You lost!"
    elsif game == "rock" && user == "rock"
      "It's a draw!"
    elsif game == "paper" && user == "rock"
      "You lost!"
    elsif game == "paper" && user == "paper"
      "It's a draw!"
    elsif game == "paper" && user == "scissors"
      "You won!"
    elsif game == "scissors" && user == "rock"
      "You won!"
    elsif game == "scissors" && user == "paper"
      "You lost!"
    elsif game == "scissors" && user == "scissors"
      "It's a draw!"
    end

  end
end
