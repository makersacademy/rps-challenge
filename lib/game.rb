class Game
  attr_reader :decision, :cpu

  def initialize(decision)
    @decision = decision
    @cpu = ["Rock", "Paper", "Scissors"].sample
  end

  # def self.play(decision)
  #   @play
  # end

  def result_message
    return "YOU WIN!" if you_win
    return "YOU LOSE!" if you_lose
    return "IT WAS A DRAW"
  end

  private
  def you_win
    (@decision == "Rock" && @cpu == "Scissors") ||
    (@decision == "Scissors" && @cpu == "Paper") ||
    (@decision == "Paper" && @cpu == "Rock")
  end

  def you_lose
    (@decision == "Rock" && @cpu == "Paper") ||
    (@decision == "Scissors" && @cpu == "Rock") ||
    (@decision == "Paper" && @cpu == "Scissors")
  end

end
