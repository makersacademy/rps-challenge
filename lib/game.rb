class Game
  def initialize(players)
    @players = players
    @player = players.first
  end

  def pick_cpu_hand
    @cpu_hand = ["Rock", "Paper", "Scissors"].sample
  end

  def result
    if @players.length == 1
      return "a Draw. You both picked #{cpu_hand}." if draw?
      return "a Win! #{player.choice} beats #{cpu_hand}." if win?
      "a Loss! #{cpu_hand} beats #{player.choice}."
    else
      @cpu_hand = players.last.choice
      return "a Draw. You both picked #{cpu_hand}." if draw?
      return "a win for #{player.name}! #{player.choice} beats #{cpu_hand}." if win?
      "a win for #{players.last.name}! #{cpu_hand} beats #{player.choice}."
    end
  end

  attr_reader :players, :cpu_hand, :player

  private

  def win?
    rock_vs_scissors? || scissors_vs_paper? || paper_vs_rock?
  end

  def draw?
    cpu_hand == player.choice
  end

  def rock_vs_scissors?
    player.choice == "Rock" && cpu_hand == "Scissors"
  end

  def scissors_vs_paper?
    player.choice == "Scissors" && cpu_hand == "Paper"
  end

  def paper_vs_rock?
    player.choice == "Paper" && cpu_hand == "Rock"
  end
end