class DetermineWinner

  def result(computer: c_choice, player: p_choice)
    determine_winner(computer, player)
  end

  private

  def determine_winner(computers_choice, players_choice)
    return "Draw" if draw?(computers_choice, players_choice)
    return "Player wins" if player_wins?(computers_choice, players_choice)
    "Computer wins"
  end

  def draw?(computers_choice, players_choice)
    computers_choice == players_choice
  end

  def player_wins?(computers_choice, players_choice)
    return true if players_choice == "Rock" && computers_choice == "Scissors"
    return true if players_choice == "Paper" && computers_choice == "Rock"
    return true if players_choice == "Scissors" && computers_choice == "Paper"
  end
end
