class Game
  # key shows player1's move and value-key compare with player2's move
  GAME_HASH = {
    "rock": { "rock": :tie, "paper": :lose, "scissors": :win },
    "paper": { "rock": :win, "paper": :tie, "scissors": :lose },
    "scissors": { "rock": :lose, "paper": :win, "scissors": :tie }
  }

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @result = nil
  end

  def result
    @result = GAME_HASH[@player1.move.to_sym][@player2.move.to_sym]
  end

end
