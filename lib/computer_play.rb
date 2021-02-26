class Play

  def initialize
    @RPS = ["rock", "paper", "scissors"]
  end

  def draw
    @RPS.sample
  end

  def result(player_choice, computer)
    if player_choice == "rock" && computer == "rock"
    "It's a tie"
    else
    "It's not a tie!"
  end
end
end
