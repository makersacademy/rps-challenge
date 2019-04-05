class ResultChecker
  def self.check(player_1, player_2)
    if player_1 == player_2
      return 0
    elsif player_1 == "rock" && player_2 == "scissors"
      return 1
    elsif player_1 == "rock" && player_2 == "paper"
      return 2
    elsif player_1 == "paper" && player_2 == "rock"
      return 1
    elsif player_1 == "paper" && player_2 == "scissors"
      return 2
    elsif player_1 == "scissors" && player_2 == "paper"
      return 1
    elsif player_1 == "scissors" && player_2 == "rock"
      return 2
    end
  end
end
