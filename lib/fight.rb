class Fight
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def draw?
    player1.decision == player2.decision
  end

  def battle(p1, p2)
    x = [p1.decision, p2.decision]
    if x[0] == "rock" && x[1] == "scissors"
      p1.score_point
    elsif x[0] == "scissors" && x[1] == "paper"
      p1.score_point
    elsif x[0] == "paper" && x[1] == "rock"
      p1.score_point
    elsif x[1] == "rock" && x[0] == "scissors"
      p2.score_point
    elsif x[1] == "scissors" && x[0] == "paper"
      p2.score_point
    elsif x[1] == "paper" && x[0] == "rock"
      p2.score_point
    end
  end
end
