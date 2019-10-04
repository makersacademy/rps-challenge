module Moves

  MOVES = ["Rock", "Paper", "Scissors"]

  def winning_move(player1_move, player2_move)
    p1_move = MOVES.index(player1_move)
    p2_move = MOVES.index(player2_move)
    return nil if p1_move == p2_move
    if (p1_move - p2_move).abs == 1
      MOVES[[p1_move, p2_move].max]
    else
      MOVES[[p1_move, p2_move].min]
    end
  end
  
end