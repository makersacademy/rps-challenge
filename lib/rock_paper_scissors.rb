class RockPaperScissorsResult

  def opponent_pick_rps
    ['rock', 'paper', 'scissors'].sample
  end

  def calculate_winner(player_choice)
    computer_choice = opponent_pick_rps
    if player_choice == computer_choice
      "It's a draw"
    elsif player_choice == "rock" && computer_choice == "paper"
      "You lose"
    elsif player_choice == "paper" && computer_choice == "rock"
      "You win"
    elsif player_choice == "rock" && computer_choice == "scissors"
      "You win"
    elsif player_choice == "paper" && computer_choice == "scissors"
      "You win"
    elsif player_choice == "scissors" && computer_choice == "rock"
      "You lose"
    elsif player_choice == "scissors" && computer_choice == "paper"
      "You win"
    end
  end
end
