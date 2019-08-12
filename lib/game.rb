
class Game
  def play(player_1, player_2)
    if player_1 == player_2
      return "It's a draw!"
    elsif player_1 == "rock" && player_2 == "scissors"
      return "You win!"
    elsif player_1 == "scissors" && player_2 == "rock"
      return "You lose!"
    elsif player_1 == "paper" && player_2 == "rock"
      return "You win!"
    elsif player_1 == "rock" && player_2 == "paper"
      return "You lose!"
    elsif player_1 == "scissors" && player_2 == "paper"
      return "You win!"
    elsif player_1 == "paper" && player_2 == "scissors"
      return "You lose!"
    end
  end
end
