class Game
  RPS = ["Rock", "Paper", "Scissors"]
  
  attr_reader :player1, :player2
    
  def initialize(player_1, player_2)
    @player1 = player_1
    @player2 = player_2
  end

  def random
    rand(3)
  end

  def p1_pick
    RPS[random - 1]
  end

  def p2_pick
    RPS[random - 1]
  end

end