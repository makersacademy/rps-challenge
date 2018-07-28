class Game
  attr_reader :decision, :cpu

  def initialize(decision)
    @decision = decision
    @cpu = ["rock", "paper", "scissors"].sample
  end

  def winner
    if (@decision == "rock" && @cpu == "scissors") || (@decision == "scissors" && @cpu == "paper") || (@decision == "paper" && @cpu == "rock")
      return "YOU win!!!"
    elsif (@decision == "rock" && @cpu == "paper") || (@decision == "scissors" && @cpu == "rock") || (@decision == "paper" && @cpu == "scissors")
      return "Tough luck this time, the computer won"
    else
      return "Something to be happy about, it was a draw"
    end
  end

end
