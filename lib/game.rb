class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @scenarios = {
      rock: { rock: 0, paper: 2, scissors: 1, lizard: 1, spock: 2 },
      paper: { rock: 1, paper: 0, scissors: 2, lizard: 2, spock: 1 },
      scissors: { rock: 2, paper: 1, scissors: 0, lizard: 1, spock: 2 },
      lizard: { rock: 2, paper: 1, scissors: 2, lizard: 0, spock: 1 },
      spock: { rock: 1, paper: 2, scissors: 1, lizard: 2, spock: 0 }
    }
  end

  def winner
    @scenarios[@player1.choice][@player2.choice]
  end
end
