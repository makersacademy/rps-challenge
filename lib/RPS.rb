class RockPaperSissors
  def random_move
    ["rock", "paper", "sissors"].sample
  end

  def play(player_move, computer_move)
    if player_move == "rock"
      return "win" if computer_move == "sissors"
      return "lose" if computer_move == "paper"
      return "draw" if computer_move == "rock"
    elsif player_move == "paper"
      return "win" if computer_move == "rock"
      return "lose" if computer_move == "sissors"
      return "draw" if computer_move == "paper"
    elsif player_move == "sissors"
      return "win" if computer_move == "paper"
      return "lose" if computer_move == "rock"
      return "draw" if computer_move == "sissors"
    end
  end
end
