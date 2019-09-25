class RockPaperSissors
  def random_move
    ["rock", "paper", "sissors"].sample
  end

  def play(player, computer)
    if player == "rock"
      return "win" if computer == "sissors"
      return "lose" if computer == "paper"
      return "draw" if computer == "rock"
    elsif player == "paper"
      return "win" if computer == "rock"
      return "lose" if computer == "sissors"
      return "draw" if computer == "paper"
    elsif player == "sissors"
      return "win" if computer == "paper"
      return "lose" if computer == "rock"
      return "draw" if computer == "sissors"
    end
  end
end
