class Game 
  def initialize(player1_move)
    @player1_move = player1_move
  end

  def player2_move
    ['Rock', 'Paper', 'Scissors'].sample
  end
end
