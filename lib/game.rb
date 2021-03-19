class Game 

  def initialize(weapons = 3)
    @weapons = weapons
    @player1move = 0 
    @player2move = 0
  end

  def match(player1move, player2move)
    if player1move == player2move 
      return true
    end

    if player2move.odd? && player1move.odd? || player1move.even? && player2move.even?
      [player1move, player2move].min
    else
      [player1move, player2move].max
    end
  end
end
