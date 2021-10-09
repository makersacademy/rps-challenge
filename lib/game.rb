class Game
  def initialize
  end

  def random
    ["rock", "paper", "scissors"].sample
  end

  def result(p1, p2 = random)
    winner = { "rock" => "scissors", "paper" => "rock", "scissors" => "paper" }
    if winner[p1] == p2
      'WIN!'
    else
      (winner[p2] == p1 ? 'LOSE!' : 'DRAW')
    end
  end

end
