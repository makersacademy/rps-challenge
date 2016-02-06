class Game
  def initialize(player)
    @players = player
  end

  def pick_cpu_hand
    @cpu_hand = ["Rock", "Paper", "Scissors"].sample
  end

  def result
    return "a Draw. You both picked #{cpu_hand}." if draw?
    return "a Win! #{players.choice} beats #{cpu_hand}." if win?
    "a Loss! #{cpu_hand} beats #{players.choice}."
  end

  attr_reader :players, :cpu_hand

  private

  def win?
    rock_vs_scissors? || scissors_vs_paper? || paper_vs_rock?
  end

  def draw?
    cpu_hand == players.choice
  end

  def rock_vs_scissors?
    players.choice == "Rock" && cpu_hand == "Scissors"
  end

  def scissors_vs_paper?
    players.choice == "Scissors" && cpu_hand == "Paper"
  end

  def paper_vs_rock?
    players.choice == "Paper" && cpu_hand == "Rock"
  end
end