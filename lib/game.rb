class Game

  def winner
    if $player_1_choice == $computer_choice
      return "Its a draw"
    elsif $player_1_choice == "Rock" && $computer_choice == "Scissors"
      $wins +=1
      return "#{$player_1_name} wins"
    elsif $player_1_choice == "Paper" && $computer_choice == "Rock"
      $wins +=1
      return "#{$player_1_name} wins"
    elsif $player_1_choice == "Scissors" && $computer_choice == "Paper"
      $wins +=1
      return "#{$player_1_name} wins"
    else
      return "The computer wins"
    end
  end

end
