class Result
  @win = { "Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper"}

  def random_move
    ["Rock","Paper","Scissors"].sample
  end

  def result(player_move)
    computer_move = random_move
    win = { "Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper"}
    return "drew" if player_move == computer_move
    return "won" if win[player_move] == computer_move
    return "lost" if win[computer_move] == player_move
  end

end
