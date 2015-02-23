class Game

  def add_player(player)
    @player = player
  end

  def player
    @player
  end

  def winner(player_choice, computer_choice)

    if player_choice == computer_choice
       "It's a tie!"

    elsif (player_choice == 'Paper' &&  computer_choice == "Rock") ||
          (player_choice == 'Rock' && computer_choice == "scissors") ||
          (player_choice == 'Scissors' && computer_choice == "Paper")
        "YOU WIN!"
    else
        "COMPUTER WIN!"
    end
  end
end