class Game
  attr_reader :decision

  def initialize(decision)
    @decision = decision
  end

  def cpu_weapon
    ["Rock", "Paper", "Scissors"].sample
  end

  def result_message
    return "YOU WIN!" if you_win
    return "YOU LOSE!" if you_lose
    return "IT WAS A DRAW"
  end

  private
  def you_win
    (@decision == "Rock" && cpu_weapon == "Scissors") ||
    (@decision == "Scissors" && cpu_weapon == "Paper") ||
    (@decision == "Paper" && cpu_weapon == "Rock")
  end

  def you_lose
    (@decision == "Rock" && cpu_weapon == "Paper") ||
    (@decision == "Scissors" && cpu_weapon == "Rock") ||
    (@decision == "Paper" && cpu_weapon == "Scissors")
  end

end
