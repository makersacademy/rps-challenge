class Winner

  def initialize(players)
    @players = players
  end

  def determine
    return player2_won if @players.move1 == "rock" && @players.move2 == "paper"
    return player1_won if @players.move1 == "rock" && @players.move2 == "scissors"
    return draw if @players.move1 == "rock" && @players.move2 == "rock"
    return player1_won if @players.move1 == "paper" && @players.move2 == "rock"
    return draw if @players.move1 == "paper" && @players.move2 == "paper"
    return player2_won if @players.move1 == "paper" && @players.move2 == "scissors"
    return player2_won if @players.move1 == "scissors" && @players.move2 == "rock"
    return player1_won if @players.move1 == "scissors" && @players.move2 == "paper"
    return draw if @players.move1 == "scissors" && @players.move2 == "scissors"
  end

  def player1_won
    "#{@players.name1} won!"
  end

  def player2_won
    "#{@players.name2} won!"
  end

  def draw
    "It's a draw!"
  end

end
