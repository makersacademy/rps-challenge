class Game

  RULES = { rock: :scissors,
            paper: :rock,
            scissors: :paper }

  def winner
    if $player_1_choice == $computer_choice
      return "Its a draw"
    elsif $player_1_choice == :rock && $computer_choice == :scissors
      return "Player 1 wins"
    elsif $player_1_choice == :paper && $computer_choice == :rock
      return "Player 1 wins"
    elsif $player_1_choice == :scissors && $computer_choice == :paper
       return "Player 1 wins"
    else
      return "The computer wins"
    end
  end

end
