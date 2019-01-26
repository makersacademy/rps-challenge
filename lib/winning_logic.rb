class WinningLogic
  def initialize
    @winning_hash = { "Rock" => "Scissors",
                      "Paper" => "Rock",
                      "Scissors" => "Paper" }
  end

  def winner(player_1, player_2)
    if player_1.move == player_2.move
          "Draw"
    elsif @winning_hash[player_1.move] == player_2.move
      player_1.add_point
    else
      player_2.add_point
    end
  end
end
