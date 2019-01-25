class WinningLogic
  def winner(player_1, player_2)
    if player_1.move == player_2.move
      "Draw"
    elsif player_1.move == "Rock"
      if player_2.move == "Scissors"
        player_1.add_point
      else
        player_2.add_point
      end
    elsif player_1.move == "Paper"
      if player_2.move == "Rock"
        player_1.add_point
      else
        player_2.add_point
      end
    elsif player_1.move == "Scissors"
      if player_2.move == "Paper"
        player_1.add_point
      else
        player_2.add_point
      end
    end
  end
end
