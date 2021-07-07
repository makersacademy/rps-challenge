class RockPaperScissorsResult

  def calculate_winner(player_choice, computer_choice)
    if player_choice == computer_choice
      "It's a draw"
    elsif player_choice == "rock" && computer_choice == "scissors" ||
      player_choice == "scissors" && computer_choice == "paper" ||
      player_choice == "paper" && computer_choice == "rock"
      "You win!"
    else
      "Unlucky! You lose"
    end
  end
end
