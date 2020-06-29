class Game

  def computer
    ["Rock", "Paper", "Scissors"].sample
  end

  def result(player_choice, computer)
    result_hash = {
      "Rock" => "Scissors",
      "Paper" => "Rock",
      "Scissors" => "Paper"
    }

    return "Result: draw" if player_choice == computer
    return "Result: Player wins" if result_hash[player_choice] == computer
    "Result: Computer wins" if result_hash[computer] == player_choice
  end
end
