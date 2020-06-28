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

    if player_choice == computer
      "Result: draw"
    elsif result_hash[player_choice] == computer
      "Result: Player wins"
    elsif result_hash[computer] == player_choice
      "Result: Computer wins"
    end
  end
end
