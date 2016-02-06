class Game
  def initialize(players)
    @players = players
    @player = players.first
    @player2 = players.last
  end
 
  def result
      return "a Draw. You both picked #{player.choice}." if draw?
      return "a win for #{player.name}! #{player.choice} beats #{player2.choice}." if win?
      "a win for #{players.last.name}! #{player2.choice} beats #{player.choice}."
  end

  attr_reader :players, :player, :player2

  private

  def win?
    rock_vs_scissors? || scissors_vs_paper? || paper_vs_rock?
  end

  def draw?
    player2.choice == player.choice
  end

  def rock_vs_scissors?
    player.choice == "Rock" && player2.choice == "Scissors"
  end

  def scissors_vs_paper?
    player.choice == "Scissors" && player2.choice == "Paper"
  end

  def paper_vs_rock?
    player.choice == "Paper" && player2.choice == "Rock"
  end
end