# require_relative 'computer'

class Game

  def result(player_choice, computer_choice)
    if player_choice == computer_choice
      'It is a draw!'
    elsif player_choice == 'Rock'
      if computer_choice == 'Scissors'
        return 'Rock smashes scissors! You win!'
      else
        return 'Paper covers rock! You lose!'
      end
    elsif player_choice == 'Paper'
      if computer_choice == 'Rock'
        return 'Paper covers rock. You win!'
      else
        return 'Scissors cuts paper! You lose!'
      end
    elsif player_choice == 'Scissors' 
      if computer_choice == 'Paper'
        return 'Scissors cuts paper! You win!'
      else
        return 'Rock smashes scissors! You lose'
      end
    end
  end
end