class Result
  @win = { "Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper" }

  def random_move
    ["Rock", "Paper", "Scissors"].sample
  end

  def result(player_move, player_2_move = random_move)
    p player_2_move
    win = { "Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper" }
    return "drew" if player_move == player_2_move
    return "won" if win[player_move] == player_2_move
    return "lost" if win[player_2_move] == player_move
  end

end
