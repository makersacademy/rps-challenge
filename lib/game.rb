class Game
  def outcome(player_move, computer_move)
    return "It's a draw!" if player_move == computer_move
    case player_move
    when "Rock"
      rock_outcome(computer_move)
    when "Paper"
      paper_outcome(computer_move)
    when "Scissors"
      scissors_outcome(computer_move)
    end
  end

  def rock_outcome(computer_move)
    computer_move == "Paper" ? "You lose!" : "You win!"
  end

  def paper_outcome(computer_move)
    computer_move == "Scissors" ? "You lose!" : "You win!"
  end

  def scissors_outcome(computer_move)
    computer_move == "Rock" ? "You lose!" : "You win!"
  end
end
