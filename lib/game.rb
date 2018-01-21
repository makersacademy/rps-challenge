require_relative 'player'
require_relative 'ai'

class Game

  def play_match(ai_choice, player_choice)
    if player_choice == "rock"
      if ai_choice == "rock"
        "It's a draw!"
      elsif ai_choice == "paper"
        "You lose!"
      else
        "You win!"
      end
    elsif player_choice == "paper"
      if ai_choice == "rock"
        "You win!"
      elsif ai_choice == "paper"
        "It's a draw!"
      else
        "You lose!"
      end
    elsif player_choice == "scissors"
      if ai_choice == "rock"
        "You lose!"
      elsif ai_choice == "paper"
        "You win!"
      else
        "It's a draw!"
      end
    else
      "Error! Try again!"
    end
  end

end
