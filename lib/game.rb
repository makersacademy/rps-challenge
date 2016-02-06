class Game
  def initialize(player)
    @players = player
  end

  def pick_cpu_hand
    @cpu_hand = ["Rock", "Paper", "Scissors"].sample
  end

  def result
    return "a Draw. You both picked #{cpu_hand}." if cpu_hand == players.choice
    return "a Win! #{players.choice} beats #{cpu_hand}." if win?
    "a Loss! #{cpu_hand} beats #{players.choice}."
  end

  attr_reader :players, :cpu_hand

  private

  def win?
    return true if players.choice == "Rock" && cpu_hand == "Scissors"
    return true if players.choice == "Scissors" && cpu_hand == "Paper"
    return true if players.choice == "Paper" && cpu_hand == "Rock"
    false
  end
end