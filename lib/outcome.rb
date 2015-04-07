class Outcome

  def winner?(user_play, cpu_play)
    if user.choice == cpu.choice
      "It's a draw!"
    elsif user_play.choice == "scissors" && cpu_play.choice == "paper"
      "You have won!"
    elsif user_play.choice == "paper" && cpu_play.choice == "rock"
      "You have won!"
    elsif user_play.choice == "rock" && cpu_play.choice == "scissors"
      "You have won!"
    else
      "You lost!"
    end
  end
end
