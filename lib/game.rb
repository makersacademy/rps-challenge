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

    elsif (player_choice == 'paper' &&  computer_choice == "rock") ||
          (player_choice == 'rock' && computer_choice == "scissors") ||
          (player_choice == 'scissors' && computer_choice == "paper")
        "YOU WIN!"
    else
        "COMPUTER WIN!"
    end
  end

end