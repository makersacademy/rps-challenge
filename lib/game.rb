class Game

  winner = {
      "rock" => "scissors",
      "scissors" => "paper",
      "paper" => "scissors"
  }
  
  def bot_move
    ["rock", "paper", "scissors"].sample
  end



end