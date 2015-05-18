class RPS

  def go
    return ["rock","paper","scissors"].sample
  end

  def play_round(human)
    computer = go

    if computer == human
      return computer, "draw"
    elsif (computer == "rock" && human == "scissors") || (computer == "paper" && human == "rock") || (computer == "scissors" && human == "paper")
      return computer, "computer"
    else
      return computer, "human"
    end

  end


end

# g = RPS.new

# p g.play_round("rock")
# p g.play_round("rock")
# p g.play_round("rock")
# p g.play_round("rock")
# p g.play_round("scissors")
# p g.play_round("paper")
# p g.play_round("paper")
# p g.play_round("rock")
# p g.play_round("rock")