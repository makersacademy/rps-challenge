require_relative 'player'

class RockPaperScissors

  def random_move
    ["rock", "paper", "scissors"].sample
  end
  
  def play(player1, player2)
    if player1 == "rock"
      return "win" if player2 == "scissors"
      return "lose" if player2 == "paper"
      return "draw" if player2 == "rock"
    elsif player1 == "paper"
      return "win" if player2 == "rock"
      return "lose" if player2 == "scissors"
      return "draw" if player2 == "paper"
    elsif player1 == "scissors"
      return "win" if player2 == "paper"
      return "lose" if player2 == "rock"
      return "draw" if player2 == "scissors"
    end
  end
end
