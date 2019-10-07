class Winner

  def initialize(player, computer)
    result(player, computer)
  end

  def result(player, computer)
    if player == computer
      return "Draw"
    else
      outcomes = [["Rock", "Scissors"], ["Scissors", "Paper"], ["Paper", "Rock"]]
      outcomes.include?([player, computer]) ? "You win" : "Computer wins"
    end
  end

end
